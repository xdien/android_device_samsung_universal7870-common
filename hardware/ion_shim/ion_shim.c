#include <errno.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dlfcn.h>
#include <android/log.h>

#define LOG_TAG "ION_SHIM"
#define ALOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)
#define ALOGD(...) __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)

typedef int ion_user_handle_t;

// Function pointer type for real ion_alloc
typedef int (*ion_alloc_t)(int fd, size_t len, size_t align, unsigned int heap_mask, unsigned int flags, ion_user_handle_t *handle);

// Helper to get real function
static ion_alloc_t get_real_ion_alloc() {
    static ion_alloc_t real_func = NULL;
    if (!real_func) {
        real_func = (ion_alloc_t)dlsym(RTLD_NEXT, "ion_alloc");
        if (!real_func) {
            // Try loading libion.so explicitly
            void *handle = dlopen("libion.so", RTLD_NOW);
            if (handle) {
                real_func = (ion_alloc_t)dlsym(handle, "ion_alloc");
            }
        }
    }
    return real_func;
}

__attribute__((constructor))
static void shim_init() {
    ALOGE("ION_SHIM: Library loaded successfully! PID=%d", getpid());
}

// Shimmed ion_alloc
__attribute__((visibility("default")))
int ion_alloc(int fd, size_t len, size_t align, unsigned int heap_mask, unsigned int flags, ion_user_handle_t *handle) {
    ALOGE("ION_SHIM: ion_alloc called! mask=0x%x flags=0x%x", heap_mask, flags);
    ion_alloc_t real_ion_alloc = get_real_ion_alloc();
    
    if (!real_ion_alloc) {
        ALOGE("Failed to find real ion_alloc symbol!");
        return -EINVAL;
    }

    // Try original call
    int ret = real_ion_alloc(fd, len, align, heap_mask, flags, handle);
    
    if (ret != 0) {
        ALOGE("ion_alloc failed: ret=%d, len=%zu, align=%zu, mask=0x%x, flags=0x%x. Attempting retry...", 
              ret, len, align, heap_mask, flags);
        
        // Retry with SYSTEM Heap (Mask 1) and possibly different flags
        // Sometimes flags like ION_FLAG_PROTECTED cause issues on non-supported kernels
        unsigned int new_mask = (1 << 0); // ION_HEAP_SYSTEM_MASK
        unsigned int new_flags = flags & ~0x0; // Keep flags for now, or maybe clear specific ones?
        
        // If heap was not SYSTEM, try SYSTEM
        if (heap_mask != new_mask) {
            ALOGD("Retrying with ION_HEAP_SYSTEM_MASK");
            ret = real_ion_alloc(fd, len, align, new_mask, new_flags, handle);
            if (ret == 0) {
                ALOGD("Retry with SYSTEM_MASK succeeded!");
                return 0;
            } else {
                 ALOGE("Retry with SYSTEM_MASK failed: ret=%d", ret);
            }
        }
        
        // If that failed, or mask was already system, try clearing flags?
        // e.g. clear everything but CACHED?
        // This is risky but desperate times...
    } else {
        // ALOGD("ion_alloc success: mask=0x%x", heap_mask);
    }
    
    return ret;
}

#include <dlfcn.h>
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Testing dlopen on /vendor/lib/hw/camera.vendor.exynos7870.so...\n");
    
    // Attempt 1: Specific path
    void* handle = dlopen("/vendor/lib/hw/camera.vendor.exynos7870.so", RTLD_NOW);
    if (!handle) {
        printf("FAIL (path): %s\n", dlerror());
        
        // Attempt 2: Library name only (rely on LD_LIBRARY_PATH)
        printf("Testing dlopen on camera.vendor.exynos7870.so (search path)...\n");
        handle = dlopen("camera.vendor.exynos7870.so", RTLD_NOW);
        if(!handle) {
            printf("FAIL (name): %s\n", dlerror());
        }
    }

    if (handle) {
        printf("SUCCESS: Loaded camera vendor blob!\n");
        void* sym = dlsym(handle, "HAL_MODULE_INFO_SYM");
        if (sym) {
            printf("SUCCESS: Found HAL_MODULE_INFO_SYM at %p\n", sym);
        } else {
            printf("INFO: HAL_MODULE_INFO_SYM not found, trying HMI...\n");
            sym = dlsym(handle, "HMI");
            if (sym) {
                 printf("SUCCESS: Found HMI symbol at %p\n", sym);
            } else {
                 printf("FAIL: Neither HAL_MODULE_INFO_SYM nor HMI found: %s\n", dlerror());
            }
        }
        dlclose(handle);
    }
    return 0;
}

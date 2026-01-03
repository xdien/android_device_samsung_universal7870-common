#include <hardware/gralloc.h>
#include <cutils/native_handle.h>
#include <log/log.h>
#include <hardware/hardware.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

// Copy struct definition from hardware/samsung/exynos4/hal/include/gralloc_priv.h
// Or generic one to see what match
struct private_handle_t_exynos4 {
    native_handle_t nativeHandle;
    int     fd;
    int     magic;
    int     flags;
    int     size;
    int     base;
    int     lockState;
    int     writeOwner;
    int     pid;
    int     ump_id;
    int     ump_mem_handle;
    int     offset;
    int     paddr;
    int     format;
    int     usage;
    int     width;
    int     height;
    int     bpp;
    int     stride;
    int     ion_client;
};

int main() {
    hw_module_t const* module;
    int err = hw_get_module(GRALLOC_HARDWARE_MODULE_ID, &module);
    if (err) {
        printf("Failed to get gralloc module\n");
        return 1;
    }

    alloc_device_t* alloc_dev;
    gralloc_module_t* gralloc_mod = (gralloc_module_t*)module;
    err = gralloc_open(module, &alloc_dev);
    
    buffer_handle_t handle;
    int stride;
    err = alloc_dev->alloc(alloc_dev, 100, 100, HAL_PIXEL_FORMAT_RGBA_8888, GRALLOC_USAGE_HW_TEXTURE, &handle, &stride);
    if (err) {
        printf("Alloc failed\n");
        return 1;
    }

    // Inspect handle
    int* data = (int*)handle;
    printf("Handle numFds: %d\n", handle->numFds);
    printf("Handle numInts: %d\n", handle->numInts);
    
    // Print raw data
    printf("Raw data:\n");
    for(int i=0; i< handle->numFds + handle->numInts + 3; i++) {
        printf("[%d]: 0x%08x\n", i, data[i]);
    }
    
    // Cast to exynos4 struct
    struct private_handle_t_exynos4* hnd = (struct private_handle_t_exynos4*)handle;
    printf("\nExynos4 Interpretation:\n");
    printf("Magic: 0x%x\n", hnd->magic);
    printf("Flags: 0x%x\n", hnd->flags);
    printf("Size: %d\n", hnd->size);
    printf("Format: %d\n", hnd->format);
    printf("Usage: 0x%x\n", hnd->usage);

    return 0;
}

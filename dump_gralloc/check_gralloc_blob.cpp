#include <hardware/gralloc.h>
#include <cutils/native_handle.h>
#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef int (*GRALLOC_OPEN_FUNC)(const hw_module_t* module, alloc_device_t** device);

int main(int argc, char** argv) {
    if (argc < 2) {
        printf("Usage: %s <path_to_gralloc_blob.so>\n", argv[0]);
        return 1;
    }

    const char* libPath = argv[1];
    printf("Attempting to dlopen: %s\n", libPath);

    void* handle = dlopen(libPath, RTLD_NOW);
    if (!handle) {
        printf("dlopen failed: %s\n", dlerror());
        return 1;
    }
    printf("dlopen success!\n");

    const hw_module_t* module = (const hw_module_t*)dlsym(handle, HAL_MODULE_INFO_SYM_AS_STR);
    if (!module) {
        printf("dlsym HMI failed: %s\n", dlerror());
        return 1;
    }
    printf("Module ID: %s, Name: %s, Author: %s\n", module->id, module->name, module->author);

    alloc_device_t* alloc_dev = NULL;
    // Manually call open. gralloc_open usually calls module->methods->open
    int err = module->methods->open(module, GRALLOC_HARDWARE_GPU0, (hw_device_t**)&alloc_dev);
    if (err) {
        printf("module->methods->open failed: %d\n", err);
        return 1;
    }
    printf("alloc_device open success!\n");

    buffer_handle_t buffer_handle;
    int stride;
    // Try to allocate a small buffer
    err = alloc_dev->alloc(alloc_dev, 100, 100, 1, 0x33, &buffer_handle, &stride); // 1 = RGBA_8888
    if (err) {
        printf("alloc failed: %d\n", err);
        return 1;
    }

    printf("Alloc success!\n");
    printf("Handle numFds: %d\n", buffer_handle->numFds);
    printf("Handle numInts: %d\n", buffer_handle->numInts);
    
    int* data = (int*)buffer_handle;
     // Print raw data to check magic (usually index numFds + 0, 1, or 2)
    printf("Raw ints:\n");
    for(int i=0; i< buffer_handle->numInts + 3; i++) {
        // Offset by numFds to get to ints part
        printf("[%d]: 0x%08x\n", i, data[buffer_handle->numFds + i]);
    }

    return 0;
}

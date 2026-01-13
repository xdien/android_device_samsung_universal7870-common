#include <stdint.h>

extern "C" {
    // _ZN7android15PermissionCache15checkPermissionERKNS_8String16Eij
    // android::PermissionCache::checkPermission(android::String16 const&, int, unsigned int)
    __attribute__((visibility("default")))
    int _ZN7android15PermissionCache15checkPermissionERKNS_8String16Eij(void* permission, int pid, unsigned int uid) {
        return 1; // Return true (1) to allow permission
    }

    // _ZNK7android8hardware14IPCThreadState13isServingCallEv
    // android::hardware::IPCThreadState::isServingCall() const
    __attribute__((visibility("default")))
    bool _ZNK7android8hardware14IPCThreadState13isServingCallEv(void* instance) {
        return false;
    }

    // _ZNK7android6Parcel14readWeakBinderEv
    // android::Parcel::readWeakBinder() const
    // Returns wp<IBinder>, which is 8 bytes on 32-bit ARM. Return 0 to simplify null wp.
    __attribute__((visibility("default")))
    uint64_t _ZNK7android6Parcel14readWeakBinderEv(void* parcel) {
        return 0;
    }

    // _ZN7android6Parcel15writeWeakBinderERKNS_2wpINS_7IBinderEEE
    // android::Parcel::writeWeakBinder(android::wp<android::IBinder> const&)
    __attribute__((visibility("default")))
    int _ZN7android6Parcel15writeWeakBinderERKNS_2wpINS_7IBinderEEE(void* parcel, void* weak_binder) {
        return 0;
    }
}

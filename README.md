# LibKullo.framework

Wrapper for libkullo in iOS projects.

## What to update when Djinni changes

If the set of generated files changes, the following places must be updated:

* New files must be added to the project
* `LibKullo.h` must be updated to include new public headers
* The "Headers" build phase must be updated: public headers go to Public, headers ending in `+Private` and support-lib headers go to Project

## What to update when libkullo changes

If the set of libraries to link against changes, the "Other linker flags" must be updated. This must be done on the project level, not on the target level!

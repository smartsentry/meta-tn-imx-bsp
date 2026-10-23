# Bump to upstream pseudo-1.9.8 release.
#
# Our previously pinned SRCREV (1.9.2+git) predates upstream fixes for:
#   - 125b020 makewrappers: Fix EFAULT implementation
#   - 490e339 pseudo_util.c: Fix symlink processing for symlinkat and related
#   - 6533a53/be14bb7/8afb45d openat2 wrapper support
#
# Without these, tar's directory-fd-caching openat2()/*at() calls under
# pseudo desync ("got *at() syscall for unknown directory") and abort with
# "Cannot mkdir: Bad address" during do_package, deterministically for
# symlink-heavy recipes such as base-files.

SRCREV = "823895ba708c63f6ae4dcbfc266210f26c02c698"
PV = "1.9.8+git"

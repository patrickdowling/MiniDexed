#!/usr/bin/env sh
export PATH=$(readlink -f /toolchain/gcc-*aarch64-none*/bin/):$PATH

exec "$@"

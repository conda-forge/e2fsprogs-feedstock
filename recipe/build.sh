#! /bin/sh

autoreconf -fis \
  -I "${PREFIX}/share/aclocal" \
  -I "${PREFIX}/share/gettext/m4" \
  -I "${BUILD_PREFIX}/share/aclocal" \
  -I "${BUILD_PREFIX}/share/gettext/m4"

AWK=awk \
./configure \
  --prefix="${PREFIX}" \
  --sbindir='${exec_prefix}/bin' \
  --enable-elf-shlibs \
  --disable-fsck \
  --disable-uuidd \
  --disable-libuuid \
  --disable-libblkid

make -j"${CPU_COUNT}"

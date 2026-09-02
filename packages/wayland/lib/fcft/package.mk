# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="fcft"
PKG_VERSION="3.3.3"
PKG_SHA256="b0c0f4a599f43723736c8565b8b84337c4195077f07f1bb8bb3252bb13a2306a"
PKG_LICENSE="MIT"
PKG_SITE="https://codeberg.org/dnkl/fcft"
PKG_URL="https://codeberg.org/dnkl/fcft/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain pixman fontconfig freetype tllist"
PKG_LONGDESC="A simple library for font loading and glyph rasterization using FontConfig, FreeType and pixman."

PKG_MESON_OPTS_TARGET="-Ddocs=disabled \
                       -Dgrapheme-shaping=disabled \
                       -Drun-shaping=disabled \
                       -Dtest-text-shaping=false \
                       -Dexamples=false"

if [ "${DISPLAYSERVER}" != "wl" ]; then
  PKG_BUILD_FLAGS="-sysroot"
  PKG_DEPENDS_CONFIG="tllist"
  PKG_MESON_OPTS_TARGET+=" --default-library static"
fi

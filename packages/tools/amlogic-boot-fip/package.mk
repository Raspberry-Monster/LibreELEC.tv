# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="amlogic-boot-fip"
PKG_LICENSE="LicenseRef-nonfree"
PKG_VERSION="7705cc9ca488a7c8f7c1b9510e045dea2a293f99"
PKG_SHA256="e2d73261f934cb7dda8b04332b1be164d239c05822b2e22a75f0949002386bb1"
PKG_SITE="https://github.com/Raspberry-Monster/amlogic-boot-fip"
PKG_URL="https://github.com/Raspberry-Monster/amlogic-boot-fip/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="Firmware Image Package (FIP) sources used to sign Amlogic u-boot binaries in LibreELEC images"
PKG_TOOLCHAIN="manual"
PKG_STAMP="${UBOOT_SYSTEM}"

post_unpack() {
  # rename dirs for alta/solitude
  mv ${PKG_BUILD}/aml-a311d-cc ${PKG_BUILD}/alta
  mv ${PKG_BUILD}/aml-s905d3-cc ${PKG_BUILD}/solitude
}

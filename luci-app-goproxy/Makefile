# Copyright (C) 2020 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for goproxy(demo)
LUCI_DEPENDS:=+luci +iptables +ipset +dnsmasq-full +curl +goproxy
LUCI_PKGARCH:=all
PKG_VERSION:=2.0
PKG_RELEASE:=7

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature


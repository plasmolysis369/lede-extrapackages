# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=v2ray-ext-geodata
PKG_RELEASE:=$(AUTORELEASE)

PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=mhycy <i@mhycy.me>

include $(INCLUDE_DIR)/package.mk

GEOIP_VER:=202202172210
GEOIP_FILE:=geoip.dat.$(GEOIP_VER)
define Download/geoip
	URL:=https://github.com/Loyalsoldier/v2ray-rules-dat/releases/download/$(GEOIP_VER)/
	URL_FILE:=geoip.dat
	FILE:=$(GEOIP_FILE)
	HASH:=52ab08f19ecfab52588ad01f67729504beda0d2cbd0780f1428f070482bafdd3
endef

GEOSITE_VER:=202202172210
GEOSITE_FILE:=geosite.dat.$(GEOSITE_VER)
define Download/geosite
	URL:=https://github.com/Loyalsoldier/v2ray-rules-dat/releases/download/$(GEOIP_VER)/
	URL_FILE:=geosite.dat
	FILE:=$(GEOSITE_FILE)
	HASH:=0a30c0505c6823e7806624091c646ebdc58a7462d9c575b839514ec0c62102b3
endef

define Package/v2ray-ext-geodata/template
	SECTION:=net
	CATEGORY:=Network
	SUBMENU:=IP Addresses and Names
	URL:=https://www.v2fly.org
	PKGARCH:=all
endef

define Package/v2ray-ext-geodata
	$(call Package/v2ray-ext-geodata/template)
	TITLE:=GeoData for ext
	VERSION:=$(GEOIP_VER)-$(PKG_RELEASE)
	LICENSE:=CC-BY-SA-4.0
endef

define Build/Prepare
$(call Build/Prepare/Default)
ifneq ($(CONFIG_PACKAGE_v2ray-ext-geodata),)
$(call Download,geoip)
$(call Download,geosite)
endif
endef

define Build/Compile
endef

define Package/v2ray-ext-geodata/install
	$(INSTALL_DIR) $(1)/usr/share/v2ray
	$(INSTALL_DATA) $(DL_DIR)/$(GEOIP_FILE) $(1)/usr/share/v2ray/geoip.dat
	$(INSTALL_DATA) $(DL_DIR)/$(GEOSITE_FILE) $(1)/usr/share/v2ray/geosite.dat
endef

$(eval $(call BuildPackage,v2ray-ext-geodata))
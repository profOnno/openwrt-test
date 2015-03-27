#
# This is free software, licensed under the GNU General Public License v2.
#

#include $(TOPDIR)/rules.mk

PKG_NAME:=test
PKG_VERSION:=0.1.0
PKG_RELEASE:=1
#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-nano.tar.gz
#PKG_SOURCE_URL:=http://4th.googlecode.com/files/
#PKG_MD5SUM:=087e3a18a278046cc02abc968515646c

#include $(INCLUDE_DIR)/package.mk

define Package/test
  MAINTAINER:="Menno Vossen" <menno.vossen@kuopzi.nl>
  TITLE:=test
  SECTION:=lang
  CATEGORY:=Languages
  URL:=https://github.com/profOnno/openwrt-nodejs/wiki
endef

define Package/test/description
  test for openwrt
endef

#MAKE_VARS += \
	LIBRARIES="${PKG_INSTALL_DIR}/usr/lib" \
	BINARIES="${PKG_INSTALL_DIR}/usr/bin"
#MAKE_FLAGS += \
	-C $(PKG_BUILD_DIR)/sources -f Makefile.NAN

#define Package/nodejs/install
#	$(INSTALL_DIR) $(1)/usr/bin
#	$(INSTALL_DIR) $(1)/usr/lib
#	$(INSTALL_BIN) $(PKG_BUILD_DIR)/sources/nodejs $(1)/usr/bin/
#endef
#	$(CP) $(PKG_BUILD_DIR)/sources/lib4th.a $(1)/usr/lib/

$(eval $(call BuildPackage,nodejs))

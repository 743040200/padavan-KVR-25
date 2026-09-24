include $(TOPDIR)/rules.mk

PKG_NAME:=easytier
PKG_VERSION:=2.3.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/easytier
  SECTION:=net
  CATEGORY:=Network
  TITLE:=EasyTier固件内置版‑Newifi‑D2
  DEPENDS:=+libpthread +libstdcpp
endef

define Package/easytier/description
原生主题页面集成，二进制内置固件，禁用上传下载，适配新路由3 MT7621
endef

define Build/Compile
endef

define Package/easytier/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/easytier-core $(1)/usr/bin/
	$(INSTALL_BIN) ./files/easytier-cli $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/etc/scripts
	$(INSTALL_BIN) ./files/easytier.sh $(1)/etc/scripts/
endef

$(eval $(call BuildPackage,easytier))
APP_NAME := easytier

all: install

install:
	$(STRIP) ./easytier-core
	$(STRIP) ./easytier-cli
	$(INSTALL_BIN) ./easytier-core $(INSTALL_ROOT)/usr/bin/
	$(INSTALL_BIN) ./easytier-cli $(INSTALL_ROOT)/usr/bin/
	$(INSTALL_BIN) ./easytier.sh $(INSTALL_ROOT)/etc/scripts/

clean:
	@true
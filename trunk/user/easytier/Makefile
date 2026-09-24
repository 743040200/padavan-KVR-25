APP_NAME := easytier

all: install

install:
	install -m 755 ./easytier-core  $(INSTALL_ROOT)/usr/bin/
	install -m 755 ./easytier-cli  $(INSTALL_ROOT)/usr/bin/
	install -m 755 ./easytier.sh   $(INSTALL_ROOT)/etc/scripts/

clean:
	@true
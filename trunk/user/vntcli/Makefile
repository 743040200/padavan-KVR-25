SRC_NAME = VNT-CLI
THISDIR = $(shell pwd)

all:

extract_test:

config_test:
clean:

romfs:
	$(ROMFSINST) -e /usr/bin/vnt-cli
	$(ROMFSINST) -e /usr/bin/vnt.sh
	chmod 755 $(ROMFSDIR)/usr/bin/vnt-cli
	chmod 755 $(ROMFSDIR)/usr/bin/vnt.sh

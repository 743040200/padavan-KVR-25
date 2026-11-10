SRC_NAME = VNT-CLI
THISDIR = $(shell pwd)

all:

extract_test:

config_test:
clean:

romfs:
	$(ROMFSINST) -e /usr/bin/vntcli
	$(ROMFSINST) -e /usr/bin/vntctl.sh
	chmod 755 $(ROMFSDIR)/usr/bin/vntcli
	chmod 755 $(ROMFSDIR)/usr/bin/vntctl.sh
SRC_NAME = EasyTier
THISDIR = $(shell pwd)
TAR_URL=https://ghfast.top/https://github.com/lmq8267/EasyTier/releases/download/v2.3.0/easytier-mipsel-linux-muslsf.tar.gz
TMP_TAR=$(THISDIR)/tmp_easytier.tar.gz
BIN_LIST:=easytier-core easytier-web easytier-cli

all: $(BIN_LIST)
$(BIN_LIST):
	@echo "EasyTier二进制缺失，开始下载v2.3.0"
	rm -f $(TMP_TAR)
	wget --no-check-certificate -T10 -t2 $(TAR_URL) -O $(TMP_TAR)
	tar -xf $(TMP_TAR) -C $(THISDIR)/
	rm -f $(TMP_TAR)

extract_test:
config_test:
clean:
	rm -f $(TMP_TAR)

romfs:
	$(ROMFSINST) $(THISDIR)/easytier.sh /usr/bin/easytier.sh
	$(ROMFSINST) -d /etc/storage/bin/easytier
	$(ROMFSINST) $(THISDIR)/easytier-core /etc/storage/bin/easytier/easytier-core
	$(ROMFSINST) $(THISDIR)/easytier-web /etc/storage/bin/easytier/easytier-web
	$(ROMFSINST) $(THISDIR)/easytier-cli /etc/storage/bin/easytier/easytier-cli
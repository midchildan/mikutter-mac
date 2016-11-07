prefix = /Applications
MIKUTTER_PREFIX = /usr/local/opt/mikutter/libexec
PREPEND_PATH = /usr/local/bin:/usr/local/sbin

APP_DIR = $(prefix)/mikutter.app/Contents

INSTALL = install
INSTALL_DATA = $(INSTALL) -m 644
INSTALL_PROGRAM = $(INSTALL) -m 755

.PHONY: all clean install

all: Info.plist mikutter.icns mikutter

clean:
	$(RM) Info.plist
	$(RM) mikutter.icns
	$(RM) mikutter

install: all
	$(INSTALL) -d $(APP_DIR)
	$(INSTALL_DATA) Info.plist $(APP_DIR)/Info.plist
	$(INSTALL) -d $(APP_DIR)/Resources
	$(INSTALL_DATA) mikutter.icns $(APP_DIR)/Resources/mikutter.icns
	$(INSTALL) -d $(APP_DIR)/MacOS
	$(INSTALL_PROGRAM) mikutter $(APP_DIR)/MacOS/mikutter

mikutter.icns: 
	/usr/bin/sips -s format icns\
	  $(MIKUTTER_PREFIX)/core/skin/data/icon.png --out $@

%: %.erb
	PREPEND_PATH="$(PREPEND_PATH)" erb -T - $< > $@

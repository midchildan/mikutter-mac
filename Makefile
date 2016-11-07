.PHONY: all clean install

all:
	$(MAKE) -C app

install:
	$(MAKE) -C app install

clean:
	$(MAKE) -C app clean

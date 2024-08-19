X11DIR = /usr/share/X11/xkb/symbols/
KBDDIR = /usr/share/kbd/keymaps/

X11MAP = $(X11DIR)/zhk
KBDMAP = $(KBDDIR)/zhk.map.gz

install:
	install -g root -o root -m644 zhk-symbols $(X11MAP)

	gzip -k zhk.map && \
	install -g root -o root -m644 zhk.map.gz $(KBDMAP) && \
	rm -f zhk.map.gz

uninstall:
	rm -f $(X11MAP) $(KBDMAP)

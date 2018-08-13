install:
	gcc `pkg-config --cflags gtk+-3.0` -o weedbox-gtk weedbox-gtk.c `pkg-config --libs gtk+-3.0`
	mkdir -p /usr/share/weedbox-gtk/
	mv -f weedbox-gtk /usr/share/weedbox-gtk/
	cp -f weed.png /usr/share/weedbox-gtk/
	cp -f weedbox.ui /usr/share/weedbox-gtk/
	cp -f ./weedbox-gtk.desktop /usr/share/applications/
remove:
	rm -rf /usr/share/weedbox-gtk/

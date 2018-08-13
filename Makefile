install:
	gcc `pkg-config --cflags gtk+-3.0` -o weedbox-gtk weedbox-gtk.c `pkg-config --libs gtk+-3.0`
	mkdir -p /usr/share/weedbox-gtk/
	cp -f weedbox-gtk /usr/share/weedbox-gtk/
	cp -f weed.jpg /usr/share/weedbox-gtk/
	cp -f weedbox.ui /usr/share/weedbox-gtk/
	cp -f ./weedbox-gtk.desktop /usr/share/applications/
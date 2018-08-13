#include <gtk/gtk.h>

int main(int argc, char *argv[]) {
    GtkBuilder *builder;
    GObject *window;
    GObject *label;
    GObject *image;
    GError *error = NULL;

    gtk_init(&argc, &argv);

    builder = gtk_builder_new();

    if (gtk_builder_add_from_file(builder, "/usr/share/weedbox-gtk/weedbox.ui", &error) == 0) {
        g_printerr("Failed to load file from install folder: trying to load from local directory: %s\n", error->message);
        g_clear_error(&error);
        if (gtk_builder_add_from_file(builder, "weedbox.ui", &error) == 0) {
            g_printerr("Failed to load file: %s\n", error->message);
            g_clear_error(&error);
            return 1;
        }
    }

    window = gtk_builder_get_object(builder, "window");
    label = gtk_builder_get_object(builder, "weed1");
    image = gtk_builder_get_object(builder, "weed_img");

    g_signal_connect(window, "destroy", G_CALLBACK(gtk_main_quit), NULL);
    gtk_main();

    return 0;
}
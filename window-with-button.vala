using Gtk;

static int main(string[] args) {
    Gtk.init (ref args);

    var window = new Window ();
    window.title = "First prg on Vala";
    window.border_width = 10;
    window.window_position = WindowPosition.CENTER;
    window.set_default_size (350, 70);
    window.destroy.connect (Gtk.main_quit);

    var button = new Button.with_label ("Press me!");
    button.clicked.connect (() => {
        button.label = "Thx!";
    });

    window.add (button);
    window.show_all ();

    Gtk.main ();
    return 0;
}
{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [dconf];
  xdg.configFile = {
    "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
  };
  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {color-scheme = "prefer-dark";};
    };
  };
  home.pointerCursor = {
    name = "macOS-Monterey";
    size = 22;
    package = pkgs.apple-cursor;
    gtk.enable = true;
  };
  gtk = {
    gtk3 = {
      bookmarks = [
        "file://${config.home.homeDirectory}/Documents"
        "file://${config.home.homeDirectory}/Downloads"
        "file://${config.home.homeDirectory}/Music"
        "file://${config.home.homeDirectory}/Pictures"
        "file://${config.home.homeDirectory}/Videos"
      ];
    };
    cursorTheme = {
      name = "macOS-Monterey";
      package = pkgs.apple-cursor;
      size = 24;
    };
    enable = true;
    iconTheme = {
      name = "WhiteSur";
      package =
        pkgs.whitesur-icon-theme {
        };
      font = {
        name = "Fira Sans";
        package = pkgs.fira-sans;
        size = 10;
      };
      theme = {
        name = "Graphite-pink-Dark";
        package = pkgs.graphite-gtk-theme.override {
          colorVariants = ["dark"];
          themeVariants = ["pink"];
          tweaks = ["rimless" "darker" "normal" "colorful"];
        };
      };
    };
  };
}

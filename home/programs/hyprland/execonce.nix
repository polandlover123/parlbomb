{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "exec --no-startup-id gnome-keyring-daemon --start --components=pkcs11,secrets,ssh"
        "${pkgs.waybar}/bin/waybar"
        "spotify"
        "${pkgs.webcord-vencord}/bin/webcord"
        "${pkgs.swww}/bin/swww-daemon"
        "${pkgs.swayosd}/bin/swayosd-server"
        "${pkgs.clipse}/bin/clipse -listen"
        "hyprctl setcursor macOS 22"
      ];
    };
  };
}

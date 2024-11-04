{
  lib,
  pkgs,
  config,
  ...
}: {
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "alacritty"
        "exec --no-startup-id gnome-keyring-daemon --start --components=pkcs11,secrets,ssh"
        "${pkgs.waybar}/bin/waybar"
        "spotify"
        "${pkgs.webcord-vencord}/bin/webcord"
        "${pkgs.swww}/bin/swww-daemon"
        "${pkgs.swayosd}/bin/swayosd-server"
        "${pkgs.clipse}/bin/clipse -listen"
        "systemctl --user import-environment PATH"
        "hyprctl setcursor macOS 22"
      ];
    };
  };
}

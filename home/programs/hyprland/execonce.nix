{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        "spotify"
        "webcord"
        "swww-daemon"
        "swayosd-server"
        "${pkgs.clipse}/bin/clipse -listen"
        "hyprctl setcursor macOS 22"
      ];
    };
  };
}

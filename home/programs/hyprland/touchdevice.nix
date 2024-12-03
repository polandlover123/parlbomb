{
  inputs,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    plugins = [
      inputs.hyprgrass.packages.${pkgs.system}.hyprgrass
    ];
    settings = {
      "plugin:touch_gestures" = {
        sensitivity = 4.0;
        long_press_delay = 350;
        resize_on_border_long_press = true;
        hyprgrass-bind = [
          ", tap:4, exec, alacritty"
          ", edge:r:l, workspace, +1"
          ", edge:l:r, workspace, -1"
          ", swipe:3:d, overview:toggle"
          ", tap:5, exec, anyrun"
          ", swipe:3:u, workspace,special:discord"
        ];
        hyprgrass-bindm = [
          ", longpress:2, movewindow"
          ", longpress:3, resizewindow"
        ];
      };
      input = {
        touchdevice = {
          transform = 0;
          output = "eDP-1";
          enabled = true;
        };
        tablet = {
          output = "eDP-1";
          transform = 0;
        };
      };
    };
  };
}

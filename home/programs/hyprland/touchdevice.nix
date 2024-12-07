{
  inputs,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    extraConfig = ''
      device {
        name=wdht1f01:00-2575:0910
        output=eDP-1
      }
      device {
        name=wdht1f01:00-2575:0910-stylus
        output=eDP-1
      }

    '';
    settings = {
      # "plugin:touch_gestures" = {
      #   sensitivity = 4.0;
      #   long_press_delay = 350;
      #   resize_on_border_long_press = true;
      #   hyprgrass-bind = [
      #     ", tap:4, exec, alacritty"
      #     ", edge:r:l, workspace, +1"
      #     ", edge:l:r, workspace, -1"
      #     ", swipe:3:d, overview:toggle"
      #     ", tap:5, exec, anyrun"
      #     ", swipe:3:u, overview:toggle"
      #     ", swipe:3:d, overview:toggle"
      #   ];
      #   hyprgrass-bindm = [
      #     ", longpress:2, resizewindow"
      #   ];
      # };
      input = {
        touchdevice = {
          transform = 0;
          output = "eDP-1";
        };
        tablet = {
          output = "eDP-1";
          transform = 0;
        };
      };
    };
  };
}

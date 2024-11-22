{pkgs, ...}: let
  workspaces = builtins.concatLists (builtins.genList (x: let
      ws = let c = (x + 1) / 10; in builtins.toString (x + 1 - (c * 10));
    in [
      "SUPER, ${ws}, split-workspace, ${toString (x + 1)}"
      "SUPER SHIFT, ${ws}, split-movetoworkspace, ${toString (x + 1)}"
    ])
    10);
in {
  wayland.windowManager.hyprland = {
    extraConfig = ''
      bind = SUPERSHIFT, space, submap, INSERT
      submap = INSERT
      bind = SHIFT, d, togglesplit
      bind = SHIFT, d, submap, reset
      bind = SHIFT, s, exec,
      bind = Shift, s, submap, reset
      bind = SHIFT, e, exec, nautilus -w
      bind = SHIFT, e, submap, reset
      bind = , escape, submap, reset
      bind = SHIFT, q, exec, firefox
      bind = SHIFT, q, submap, reset
      bind = SHIFT, z, exec, google-chrome-stable --new-window
      bind = SHIFT, z, submap, reset
      submap = reset
    '';
    settings = {
      bindm = ["SUPER,mouse:272,movewindow" "SUPER,mouse:273,resizewindow"];
      # wm commands
      bind =
        [
          # grouping
          "SUPER, X, moveoutofgroup"
          "SUPER CONTROL,Z, togglegroup,"
          "SUPER SHIFT, Z, changegroupactive, f"
          "SUPER, Z, changegroupactive, b"
          # window focusing
          "SUPER, mouse_down, focusmonitor, -1"
          "SUPER, mouse_up, focusmonitor, +1"
          "SUPER SHIFT, tab, focusmonitor, next"
          # window mgmt
          "SUPER, Q, killactive"
          "SUPER, F, fullscreen"
          "SUPER, R, togglesplit"
          "SUPER, P, pseudo"
          "SUPER, O, togglefloating"
          "SUPER SHIFT, F, fullscreen,1"
          "SUPER, P, pin"
          "SUPER, left, movewindow,l"
          "SUPER, right, movewindow,r"
          # vim kb
          "SUPER, H, movefocus, l"
          "SUPER, J, movefocus, d"
          "SUPER, K, movefocus, u"
          "SUPER, L, movefocus, r"
          "SUPERSHIFT, H, movewindow, l"
          "SUPERSHIFT, J, movewindow, d"
          "SUPERSHIFT, K, movewindow, u"
          "SUPERSHIFT, L, movewindow, r"
          # programs
          "SUPER, escape, exec, hyprlock"
          "SUPER, E, exec, nautilus --new-window"
          "SUPER, N, exec, alacritty"
          "SUPER, V, exec, alacritty --class clipse -e 'clipse'"
          "SUPER, SPACE, exec, anyrun"
          "SUPER, B, exec, firefox"
          #special workspaces
          "SUPER, grave, togglespecialworkspace, discord"
          "SUPER, tab, exec, pgrep spotify && hyprctl dispatch togglespecialworkspace spotify || spotify &"
          "super, m, exec, kitty"
          # screenshotting
          "SUPER, S, exec, grimblast copysave area"
          #volume
          ", XF86AudioPlay, exec, playerctl play-pause"
          ", XF86AudioPause, exec, playerctl play-pause"
          ", XF86AudioMute,exec, swayosd-client --output-volume mute-toggle "
          ",XF86AudioNext, exec, playerctl next"
          ", XF86AudioPrev, exec, playerctl previous"
          # "SUPERSHIFT, A, hyprexpo:expo,toggle"
        ]
        ++ workspaces;
      binde = [
        ",XF86AudioRaiseVolume, exec, swayosd-client --output-volume raise"
        ",XF86AudioLowerVolume, exec, swayosd-client --output-volume lower"
        # ",XF86MonBrightnessUp, exec, brightnessctl s +5"
      ];
    };
  };
}

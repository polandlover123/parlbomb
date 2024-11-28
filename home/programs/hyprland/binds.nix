let
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
      # submap 1
      bind = SUPERSHIFT, space, submap, INSERT
      submap = INSERT
      bind = SUPERSHIFT, space, submap, rese
      bind = SHIFT, d, togglesplit
      bind = SHIFT, e, exec, nautilus -w
      bind = , escape, submap, reset
      bind = SHIFT, q, exec, firefox
      bind = SHIFT, o, exec, obsidian
      bind = SHIFT, s, exec, spotify
      bind = SHIFT, a, exec, alacritty
      bind = SHIFT, z, exec, google-chrome-stable --new-window
      bind = Shift, c, exec, code
      bind = shift, catchall, submap, reset
      bind = SUPER, catchall, submap, reset
      submap = reset

      # submap 2
      bind = SUPERSHIFT, return, submap, VISUAL
      submap = VISUAL
      bind = SUPERSHIFT, return, submap, reset
      binde = super, l, resizeactive, 20 0
      binde = super, h, resizeactive, -20 0
      binde = super, k, resizeactive, 0 -20
      binde = super, j, resizeactive, 0 20

      binde = supershift, l, moveactive, 20 0
      binde = supershift, h, moveactive, -20 0
      binde = supershift, k, moveactive, 0 -20
      binde = supershift, j, moveactive, 0 20



      bind = SHIFT, r, exec, alacritty -e nvim
      bind = , escape, submap, reset
      bind = SHIFT, catchall, submap, reset
      bind = SUPER, catchall, submap, reset
      submap = reset

      # submap 3
      bind = SUPERSHIFT, tab, submap, DEBUG
      submap = DEBUG
      bind = SUPERSHIFT, tab, submap, reset
      # binds here
      bind = SUPERSHIFT, r, forcerendererreload
      # escape clauses
      bind = , escape, submap, reset
      bind = SHIFT, catchall, submap, reset
      bind = SUPER, catchall, submap, reset
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
          "SUPER, mouse_down, workspace, -1"
          "SUPER, mouse_up, workspace, +1"
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

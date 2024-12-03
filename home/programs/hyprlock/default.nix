{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
        grace = 2;
      };

      background = {
        color = "rgb(161616)";
        # blur_passes = 2;
        brightness = 0.5;
      };
      label = {
        text = "$TIME";
        color = "rgb(be95ff)";
        font_size = 50;
        font_family = "JetBrains Mono";
        position = "0, 50";
        halign = "center";
        valign = "center";
      };
      input-field = {
        size = "50, 50";
        dots_size = 0.33;
        dots_spacing = 0.15;
        outer_color = "rgb(262626)";
        inner_color = "rgb(3a3a3a)";
        font_color = "rgb(78a9ff)";
        placeholder_text = "wqdcywqdmcgwqgdymcqw";
        hide_input = false;
        fail_color = "rgb(ff7eb6)";
        capslock_color = "rgb(ff7eb6)";
        halign = "center";
        fade_on_empty = false;
        valign = "center";
        position = "0,-50";
      };
    };
  };
}

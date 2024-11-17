{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
          family = "Monaspace Radon";
          style = "Regular";
        };
        bold = {
          family = "Monaspace Radon";
          style = "Bold";
        };
        italic = {
          family = "Monaspace Radon";
          style = "Italic";
        };
      };
      colors.primary = {
        background = "#161616";
        foreground = "#ffffff";
      };
      colors.search.matches = {
        foreground = "CellBackground";
        background = "#ee5396";
      };
      colors.normal = {
        black = "#262626";
        magenta = "#ff73b6";
        green = "#42be65";
        yellow = "#ffe97b";
        blue = "#33b1ff";
        red = "#ee5396";
        cyan = "#3ddbd9";
        white = "#dde1e6";
      };
      colors.bright = {
        black = "#393939";
        magenta = "#ff73b6";
        green = "#42be65";
        yellow = "#ffe97b";
        blue = "#33b1ff";
        red = "#ee5396";
        cyan = "#3ddbd9";
        white = "#ffffff";
      };
    };
  };
}

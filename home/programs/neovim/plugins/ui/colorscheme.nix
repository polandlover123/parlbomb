{
  programs.nixvim = {
    colorschemes.base16 = {
      enable = true;
      colorscheme = {
        base00 = "#151515";
        base01 = "#1F1F1F";
        base02 = "#2E2E2E";
        base03 = "#424242";
        base04 = "#BBB6B6";
        base05 = "#E8E3E3";
        base06 = "#E8E3E3";
        base07 = "#E8E3E3";
        base08 = "#B66467";
        base09 = "#D9BC8C";
        base0A = "#D9BC8C";
        base0B = "#8C977D";
        base0C = "#8AA6A2";
        base0D = "#8DA3B9";
        base0E = "#A988B0";
        base0F = "#BBB6B6";
      };
      settings = {
        cmp = true;
        illuminate = true;
        indentblankline = true;
        lsp_semantic = true;
        mini_completion = true;
        telescope = true;
        telescope_borders = false;
      };
    };
  };
}

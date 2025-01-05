{
  programs.nixvim.plugins = {
    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        code_actions = {
          statix.enable = true;
        };
        diagnostics = {
          statix.enable = true;
        };
        formatting = {
          alejandra.enable = true;
          black.enable = true;
        };
      };
    };
  };
}

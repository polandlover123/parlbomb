{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      treesitter-context = {
        enable = true;
      };
      treesitter = {
        enable = true;
        nixGrammars = true;
        settings = {
          highlight.enable = true;
          indent.enable = true;
        };
        folding = false;
        grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
      };
    };
  };
}

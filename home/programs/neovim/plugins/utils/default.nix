{
  imports = [
    ./git.nix
    ./precognition.nix
    ./telescope.nix
    ./treesitter.nix
  ];
  programs.nixvim.plugins = {
    nvim-autopairs.enable = true;
    tmux-navigator.enable = true;
    colorizer.enable = true;
    indent-blankline = {
      enable = true;
    };
  };
}

{
  imports = [
    ./lualine.nix
    ./colorscheme.nix
    ./tree.nix
    ./barbecue.nix
    ./fidget.nix
    ./noice.nix
  ];
  programs.nixvim.plugins.web-devicons.enable = true;
}

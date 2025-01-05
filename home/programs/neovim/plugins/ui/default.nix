{
  imports = [
    ./lualine.nix
    ./colorscheme.nix
    ./tree.nix
    ./barbecue.nix
    ./fidget.nix
  ];
  programs.nixvim.plugins.web-devicons.enable = true;
}

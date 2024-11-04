# Nixvim is a NixOS module that installs and configures Neovim
{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins
    ./keymaps.nix
    ./options.nix
  ];
  programs.nixvim.enable = true;
}

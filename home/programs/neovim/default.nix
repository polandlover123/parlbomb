{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins
    ./keymaps.nix
    ./options.nix
  ];
  home.packages = with pkgs; [
    nixd
  ];
  programs.nixvim.enable = true;
}

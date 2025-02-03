{pkgs, ...}: {
  home.packages = [
    pkgs.imv
  ];
  imports = [
    ./ags
    ./hyprland
    ./spotify
    ./hyprlock
    ./neovim
    ./git
    ./polkit.nix
    ./ssh.nix
    ./xdg.nix
    ./alacritty
    ./kitty
  ];
}

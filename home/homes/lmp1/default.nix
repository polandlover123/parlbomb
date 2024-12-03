{pkgs, ...}: {
  imports = [
    ../../.
    ../../programs/hyprland/touchdevice.nix
  ];
  monitors = {
    "eDP-1" = {
      width = 1920;
      height = 1200;
      refreshRate = 60;
      x = 0;
      y = 0;
    };
  };

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    networkmanagerapplet
    obsidian
  ];
}

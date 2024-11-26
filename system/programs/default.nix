{
  imports = [
    ./fonts.nix
    ./home-manager.nix
    # ./steam.nix
    ./hyprland.nix
    ./qt.nix
    ./xdg.nix
  ];

  programs = {
    dconf.enable = true;
    seahorse.enable = true;
    gnupg = {
      agent = {
        enable = true;
        enableExtraSocket = true;
      };
    };
  };
}

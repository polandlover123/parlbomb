{pkgs, ...}: {
  imports = [
    ./gtk.nix
    ./zsh
    ./modules/monitors.nix
    ./programs
    ./services
  ];
  home = {
    stateVersion = "24.05"; # Please read the comment before changing.
    username = "admin";
    homeDirectory = "/home/admin";
    packages = with pkgs; [
      google-chrome
      webcord-vencord
      firefox
      vscode
    ];
  };
  programs.home-manager.enable = true;

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
      permittedInsecurePackages = ["electron-25.9.0"];
    };
  };
}

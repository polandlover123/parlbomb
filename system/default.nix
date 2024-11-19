{
  imports = [
    ./core

    # ./hardware/nvidia.nix
    ./hardware
    ./networking/avahi.nix
    ./networking/default.nix
    ./services
    ./services/pipewire.nix
    ./services/location.nix
    ./services/printing.nix
    ./programs
  ];
  services.fwupd.enable = true;
}

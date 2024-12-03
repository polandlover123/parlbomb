{
  imports = [
    ./core

    # ./hardware/nvidia.nix
    ./hardware
    ./networking
    ./services
    ./programs
  ];
  services.fwupd.enable = true;
}

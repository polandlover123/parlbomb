{
  self,
  inputs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../../system
    ../../system/hardware/nvidia.nix
    ../../system/core/bootloader.nix
    inputs.home-manager.nixosModules.home-manager
  ];
  services = {displayManager.ly = {enable = true;};};
  networking.hostName = "digglydoo";
  security.tpm2.enable = true;
  services.flatpak.enable = true;
  services = {fstrim.enable = true;};
  home-manager = {
    users."admin" = import ../../home/homes/digglydoo;
    extraSpecialArgs = {
      inherit inputs;
      inherit self;
    };
  };
}

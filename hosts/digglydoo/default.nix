{
  pkgs,
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

  services = {fstrim.enable = true;};
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users."parliamentbomber" = import ../../home/homes/digglydoo;
    extraSpecialArgs = {
      inherit inputs;
      inherit self;
    };
    backupFileExtension = "hmbackup";
  };
}

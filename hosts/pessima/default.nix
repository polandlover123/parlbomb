{
  inputs,
  self,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../../system
    ../../system/core/bootloader.nix
    inputs.home-manager.nixosModules.default
  ];
  services = {displayManager.ly = {enable = true;};};
  networking.hostName = "pessima";
  security.pam.sshAgentAuth.enable = true;
  security.tpm2.enable = true;
  services = {
    fstrim.enable = true;
    logind.extraConfig = ''
      HandlePowerKey=suspend
    '';
  };
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users."parliamentbomber" = import ../../home/homes/pessima;
    extraSpecialArgs = {
      inherit inputs;
      inherit self;
    };
    backupFileExtension = "hmbackup";
  };
}

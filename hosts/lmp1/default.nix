{
  inputs,
  self,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ../../system
    ../../system/hardware/intel.nix
    inputs.home-manager.nixosModules.default
  ];
  # services = {displayManager.ly = {enable = true;};};
  services.greetd = {
    enable = true;
    vt = 2;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --cmd Hyprland";
        user = "greeter";
      };
    };
  };
  networking.hostName = "lmp1";
  services = {
    logind.extraConfig = ''
      HandlePowerKey=suspend
    '';
  };
  home-manager = {
    users."parliamentbomber" = import ../../home/homes/lmp1;
    extraSpecialArgs = {
      inherit inputs;
      inherit self;
    };
    backupFileExtension = "hmbackup";
  };
}

{
  inputs,
  self,
  pkgs,
  ...
}: {
  imports = [
    inputs.disko.nixosModules.disko
    ../../disk-config.nix
    ../../system
    ../../system/hardware/intel.nix
    inputs.home-manager.nixosModules.default
  ];
  # services = {displayManager.ly = {enable = true;};};
  hardware.sensor.iio.enable = true;
  services = {
    asusd = {
      enable = true;
      package = pkgs.asusctl;
    };
    greetd = {
      enable = true;
      vt = 2;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --remember --cmd Hyprland";
          user = "greeter";
        };
      };
    };
  };
  networking.hostName = "lmp1";
  services = {
    logind.extraConfig = ''
      HandlePowerKey=suspend
    '';
    auto-cpufreq = {
      enable = true;
      settings = {
        battery = {
          governor = "powersave";
          turbo = "never";
        };
        charger = {
          governor = "performance";
          turbo = "auto";
        };
      };
    };
  };
  home-manager = {
    users."admin" = import ../../home/homes/lmp1;
    extraSpecialArgs = {
      inherit inputs;
      inherit self;
    };
    backupFileExtension = "hmbackup";
  };
  # iphone backup
  services.usbmuxd.enable = true;
  environment.systemPackages = [
    pkgs.libimobiledevice
  ];
}

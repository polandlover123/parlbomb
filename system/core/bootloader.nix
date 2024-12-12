{pkgs, ...}: {
  boot = {
    extraModprobeConfig = ''
      options iwlwifi 11n_disable=8
    '';
    kernelPackages = pkgs.pkgs.linuxPackages_6_11;
    kernelModules = ["kvm-intel"];
    supportedFilesystems = ["ntfs"];
    loader = {
      systemd-boot.enable = false;
      efi.efiSysMountPoint = "/boot";
      efi.canTouchEfiVariables = true;
      grub = {
        configurationName = "skibidi";

        enable = true;
        devices = ["nodev"];
        efiSupport = true;
        useOSProber = true;
      };
    };
  };
}

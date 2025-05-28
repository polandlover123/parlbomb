{
  pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [
    inputs.lanzaboote.nixosModules.lanzaboote
  ];
  security.tpm2.enable = true;
  environment.systemPackages = [
    pkgs.sbctl
  ];
  boot = {
    extraModprobeConfig = ''
      options iwlwifi 11n_disable=8
    '';
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = ["kvm-intel"];
    supportedFilesystems = ["ntfs"];
    lanzaboote = {
      enable = true;
      pkiBundle = "/var/lib/sbctl";
    };
    loader = {
      systemd-boot.enable = lib.mkForce false;
      efi.efiSysMountPoint = "/boot";
      efi.canTouchEfiVariables = true;
      # grub = {
      #   enable = true;
      #   devices = ["nodev"];
      #   efiSupport = true;
      #   useOSProber = true;
      # };
    };
  };
}

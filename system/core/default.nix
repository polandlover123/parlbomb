{lib, ...}: {
  imports = [./security.nix ./bootloader.nix ./users.nix ../nix ./zsh.nix ./ssh.nix];
  documentation.dev.enable = true;
  time.timeZone = "America/Edmonton";
  i18n.defaultLocale = "en_CA.UTF-8";
  # don't touch this
  system.stateVersion = lib.mkDefault "23.11";

  # compresses half the ram for use as swap
  zramSwap.enable = true;
}

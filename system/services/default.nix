{pkgs, ...}: {
  imports = [
    ./pipewire.nix
    ./location.nix
  ];
  services = {
    gnome = {
      gnome-keyring.enable = true;
      gnome-online-accounts.enable = true;
      sushi.enable = true;
    };
    udev.packages = with pkgs; [gnome-settings-daemon];
    dbus = {
      packages = with pkgs; [dconf gcr gnome-settings-daemon udisks2];
      implementation = "broker";
      enable = true;
    };
    irqbalance.enable = true;
    psd = {
      enable = true;
      resyncTimer = "10m";
    };
    gvfs.enable = true;
  };
  boot.binfmt.registrations.appimage = {
    wrapInterpreterInShell = false;
    interpreter = "${pkgs.appimage-run}/bin/appimage-run";
    recognitionType = "magic";
    offset = 0;
    mask = "\\xff\\xff\\xff\\xff\\x00\\x00\\x00\\x00\\xff\\xff\\xff";
    magicOrExtension = "\\x7fELF....AI\\x02";
  };
}

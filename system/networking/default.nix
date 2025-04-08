{lib, ...}:
# networking configuration
{
  imports = [
    ./tailscale.nix
    ./avahi.nix
  ];
  networking = {
    # use quad9 with DNS over TLS
    nameservers = ["1.1.1.1" "1.1.0.1"];
    firewall = {
      enable = true;
      allowPing = false;
    };

    networkmanager = {
      enable = true;
      wifi = {
        powersave = lib.mkForce false;
        macAddress = "random";
      };
    };
  };

  services = {
    openssh = {
      enable = true;
      settings.UseDns = true;
    };
  };
}

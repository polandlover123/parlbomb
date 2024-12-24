let
  keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAhpXENqenMfsgiJsO5he3Cwhls9f4RYom6S3n5F/w/2"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIARFsmzGSPX4vfQnohmjrwI1QNCSbyZwMzqn4n3wl/FF"
  ];
in {
  "psk.age".publicKeys = keys;
}

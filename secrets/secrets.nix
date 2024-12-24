let
  keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAhpXENqenMfsgiJsO5he3Cwhls9f4RYom6S3n5F/w/2"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPXZ7ktmDNkJlC71cLnxiZkROE94KPqO2leoK9kp3pLd"
  ];
in {
  "psk.age".publicKeys = keys;
}

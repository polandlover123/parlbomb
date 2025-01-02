let
  keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPXZ7ktmDNkJlC71cLnxiZkROE94KPqO2leoK9kp3pLd"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFjyKEUq9Yy8BmPUFn9pDTDYaBmSWc6IwOZM32ZytvIe"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAhpXENqenMfsgiJsO5he3Cwhls9f4RYom6S3n5F/w/2"
  ];
in {
  "psk.age".publicKeys = keys;
}

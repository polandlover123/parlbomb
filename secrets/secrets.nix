let
  keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFjyKEUq9Yy8BmPUFn9pDTDYaBmSWc6IwOZM32ZytvIe"
  ];
in {
  "psk.age".publicKeys = keys;
}

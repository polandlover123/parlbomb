{pkgs, ...}: {
  users.users.admin = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = ["input" "libvirtd" "networkmanager" "video" "wheel"];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsK+6ERiJEQ/Ipt2YTvMe7lIuAlzxuH8DDtzLgrhFLALAeHTVUmknmrL7Q0l871x0LM/qPEgg1di1gN+hnR2OeJp+jvv7vGxlFP2TECMdnFiQG0J2E+45oHMwFivnuPQc24KTfIywvM+AgFahv/ryigBi8BlyMVKYXvJCIeu9T8eBn+nDaA+e6bn3ZtBAdEIUcoNeuqbyQcHNuN/Qg6zGSu0cz7/TBUxi7xzluE6RGhpP3CzoRWKPbiRLikGRyYKZ6+PWz6lVFLzix6igg2ySmUA0eXogJloGOfr4aIELM/9k+lC8ftYPvu3CtMoS7+sPvUJ5P0Ajbwf/pYXUA8RrhtKmtucn3y1ESNyKy2SUvFN3FrrfOhArV7osFUTL3heTRWm2PtmsyZeI+Vpqt8XOrBxsF+XGteFqUq/1xL6fJgZCWo+HlnGzhqbSjWGflBtAggDJbBLhASr8zjJpLH6a3STxxSivqcXyj/uK8RkJNKHmB3TdmQTXWeGkkhtzTHcU="
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEMbChK2jPrHqfdLcQ+LIcpL6qf/AFLZhZKsdhxziam2"
    ];
  };
  networking.firewall.allowedTCPPortRanges = [
    {
      from = 100;
      to = 65535;
    }
  ];
  networking.firewall.allowedUDPPortRanges = [
    {
      from = 100;
      to = 65535;
    }
  ];
}

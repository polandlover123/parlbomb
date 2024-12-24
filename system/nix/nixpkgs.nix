{self, ...}: {
  nixpkgs = {
    hostPlatform = "x86_64-linux";
    config.allowUnfree = true;
    config.allowUnfreePredicate = _: true;

    config.permittedInsecurePackages = ["electron-25.9.0"];
  };
}

{inputs, ...}: {
  # depreciated
  imports = [inputs.home-manager.nixosModules.default];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "hmbackup";
  };
}

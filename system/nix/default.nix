{
  self,
  pkgs,
  inputs,
  lib,
  ...
}: {
  imports = [./nh.nix ./docs.nix ./nixpkgs.nix ./subs.nix];

  # we need git for flakes
  environment.etc."parlbomb".source = self;
  system = {
    switch = {
      enable = false;
      enableNg = true;
    };
  };
  nix = {
    # pin the registry to avoid downloading and evaling a new nixpkgs version every time
    registry = lib.mapAttrs (_: v: {flake = v;}) inputs;
    package = pkgs.lix;

    # set the path for channels compat
    nixPath = ["nixpkgs=${inputs.nixpkgs}"];

    settings = {
      accept-flake-config = true;
      auto-optimise-store = true;
      builders-use-substitutes = true;
      experimental-features = ["nix-command" "flakes"];
      flake-registry = "/etc/nix/registry.json";
      keep-going = true;
      # for direnv GC roots
      keep-derivations = true;
      keep-outputs = true;
      warn-dirty = false;
      trusted-users = ["root" "@wheel"];
    };
  };
}

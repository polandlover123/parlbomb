{
  description = "my computers";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {url = "git+https://github.com/hyprwm/hyprland?submodules=1";};
    nh = {
      url = "github:viperml/nh";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    spicetify = {url = "github:gerg-l/spicetify-nix";};
    anyrun = {
      url = "github:anyrun-org/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
  in {
    formatter.x86_64-linux = pkgs.alejandra;
    nixosConfigurations = {
      digglydoo = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit self inputs;};
        modules = [./hosts/digglydoo];
      };
      lmp1 = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit self inputs;};
        modules = [./hosts/lmp1];
      };
    };
  };
}

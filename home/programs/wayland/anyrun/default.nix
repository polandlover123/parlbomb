{
  pkgs,
  lib,
  inputs,
  osConfig,
  ...
}: {
  programs.anyrun = {
    enable = true;
    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        inputs.nixos-anyrun-options.packages.${pkgs.system}.default
        shell
        dictionary
        applications
        stdin
      ];

      width.fraction = 0.3;
      y.fraction = 0.4;
      hidePluginInfo = true;
      #closeOnClick = true;
      maxEntries = 7;
    };
    extraCss = lib.readFile ./style.css;
    extraConfigFiles = {
      "applications.ron".text = ''
        Config(
          max_entries: 5,
          terminal: Some("alacritty"),
        )
      '';
      "dictionary.ron".text = ''
        Config(
          prefix: ":def",
          max_entries: 5,
        )
      '';
      "nixos-options.ron".text = let
        nixos-options = osConfig.system.build.manual.optionsJSON + "/share/doc/nixos/options.json";
        home-options = inputs.home-manager.packages.${pkgs.system}.docs-json + "/share/doc/home-manager/options.json";
        nixvim-options = inputs.nixvim.packages.${pkgs.system}.options-json + "/share/doc/nixos/options.json";
        options = builtins.toJSON {
          ":nix" = [nixos-options];
          ":home" = [home-options];
          ":nvim" = [nixvim-options];
        };
      in ''
        Config(
        options: ${options}
        )
      '';
    };
  };
}

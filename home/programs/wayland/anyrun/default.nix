{
  pkgs,
  lib,
  inputs,
  ...
}: {
  imports = [inputs.anyrun.homeManagerModules.default];
  programs.anyrun = {
    enable = true;

    config = {
      plugins = with inputs.anyrun.packages.${pkgs.system}; [
        applications
        rink
        shell
      ];

      width.fraction = 0.3;
      y.fraction = 0.4;
      hidePluginInfo = true;
      #closeOnClick = true;
      maxEntries = 7;
    };
    extraCss = lib.readFile ./style.css;
  };
}

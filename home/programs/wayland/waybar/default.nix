{
  pkgs,
  lib,
  config,
  ...
}: {
  home.packages = with pkgs; [iniparser cava];
  programs.waybar = {
    enable = true;
    style = builtins.readFile ./style.css;
    settings.mainBar = lib.importJSON ./config.json;
  };
}

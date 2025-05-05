{
  inputs,
  pkgs,
  ...
}: {
  imports = [inputs.spicetify.homeManagerModules.default];
  programs.spicetify = let
    spicePkgs = inputs.spicetify.legacyPackages.${pkgs.system};
  in {
    enable = true;
    windowManagerPatch = true;
    wayland = true;
    theme = spicePkgs.themes.turntable;
    enabledExtensions = with spicePkgs.extensions; [betterGenres lastfm popupLyrics adblock fullAlbumDate shuffle];
  };
}

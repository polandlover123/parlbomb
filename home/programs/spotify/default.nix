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
    theme = spicePkgs.themes.spotifyNoPremium;
    enabledExtensions = with spicePkgs.extensions; [adblock shuffle];
  };
}

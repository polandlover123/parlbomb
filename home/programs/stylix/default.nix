{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.stylix.homeManagerModules.stylix
  ];
  stylix = {
    enable = true;
    autoEnable = false;
    fonts = {
      monospace = {
        name = "Monaspace Radon";
        package = pkgs.monaspace;
      };
      sansSerif = {
        name = "Monaspace Radon";
        package = pkgs.monaspace;
      };
      serif = {
        name = "Monaspace Radon";
        package = pkgs.monaspace;
      };
    };
    cursor = {
      name = "macOS-Monterey";
      size = 22;
      package = pkgs.apple-cursor;
    };
    polarity = "dark";
    targets = {
      waybar.enable = true;
      gtk.enable = true;
    };
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  };
}

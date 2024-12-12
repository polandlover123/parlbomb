{pkgs, ...}: {
  environment.systemPackages = with pkgs; [font-manager];
  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      font-awesome
      source-han-sans
      source-han-sans-japanese
      source-han-serif-japanese
      lexend
      ipafont
      source-code-pro
      monaspace

      #mono
      jetbrains-mono
      nerd-fonts.jetbrains-mono
      nerd-fonts.victor-mono
    ];
    fontconfig = {
      enable = true;
      cache32Bit = true;
      hinting.enable = true;
      antialias = true;
      defaultFonts = {
        monospace = ["JetbrainsMono"];
        serif = ["Monaspace Xenon"];
        sansSerif = ["Monaspace Radon"];
      };
    };
  };
}

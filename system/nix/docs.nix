{
  documentation = {
    doc.enable = false;
    info.enable = false;
    nixos = {
      enable = true;
      options = {
        warningsAreErrors = true;
        splitBuild = true;
      };
    };

    man = {
      enable = true;
      generateCaches = true;
      mandoc.enable = false; # my default manpage viewer is Neovim, so this isn't necessary
    };
  };
}

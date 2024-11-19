{pkgs, ...}: {
  imports = [
    ../../.
  ];
  monitors = {
    "DP-2" = {
      width = 1920;
      height = 1080;
      refreshRate = 165;
      x = 2560;
      y = 0;
    };
    "DP-3" = {
      width = 2560;
      height = 1440;
      refreshRate = 144;
      x = 0;
      y = 0;
    };
  };
}

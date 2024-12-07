{
  config,
  pkgs,
  ...
}: {
  services.xserver.videoDrivers = ["nvidia"];
  environment.sessionVariables = {
    VDPAU_DRIVER = "nvidia";
    LIBVA_DRIVER_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    WLR_NO_HARDWARE_CURSORS = "1";
    __GL_THREADED_OPTIMIZATIONS = "0";
  };
  services.xserver.dpi = 96;
  environment.variables = {GDK_SCALE = "0.5";};
  boot = {
    kernelParams = ["nvidia.NVreg_PreserveVideoMemoryAllocations=1"];
  };
  hardware = {
    nvidia = {
      open = true;
      powerManagement.enable = true;
      modesetting.enable = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta; # not evaluating nixpkgs again so i pushed to beta
      nvidiaSettings = true;
    };
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        vaapiVdpau
        libvdpau-va-gl
        vulkan-validation-layers
        nvidia-vaapi-driver
      ];
    };
  };
}

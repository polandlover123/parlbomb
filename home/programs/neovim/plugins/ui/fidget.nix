{
  programs.nixvim.plugins = {
    fidget = {
      enable = true;
      notification = {
        overrideVimNotify = true;
        window.align = "top";
      };
    };
  };
}

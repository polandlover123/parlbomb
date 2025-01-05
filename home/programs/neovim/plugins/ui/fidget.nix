{
  programs.nixvim.plugins = {
    fidget = {
      enable = true;
      notification = {
        overrideVimNotify = true;
      };
      progress = {
        display = {
          doneIcon = "😎";
        };
      };
    };
  };
}

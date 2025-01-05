{
  programs.nixvim = {
    plugins = {
      noice = {
        enable = true;
        settings = {
          notify.enabled = false;
          messages.enabled = false;
          lsp = {
            message.enabled = false;
            progress.enabled = false;
          };
          popupmenu.enabled = false;
        };
      };
    };
  };
}

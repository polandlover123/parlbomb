{
  programs.nixvim = {
    plugins.noice = {
      enable = true;
      settings = {
        presets = {
          bottom_search = true;
          command_palette = true;
          long_message_to_split = true;
          lsp_doc_border = false;
        };
        notify = {
          enabled = false;
          view = "notify";
        };
        messages = {
          enabled = true;
          view = "mini";
        };
        lsp = {
          message = {
            enabled = false;
          };
          progress = {
            enabled = false;
            view = "mini";
          };
        };
        popupmenu = {
          enabled = true;
          backend = "nui";
        };
      };
    };
  };
}

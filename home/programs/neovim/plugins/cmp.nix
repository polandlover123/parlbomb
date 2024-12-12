{
  programs.nixvim.plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        nerd_font_variant = "mono";
        accept.auto_brackets.enabled = true;
        highlight = {
          use_nvim_cmp_as_default = true;
        };
        keymap = {
          "<C-b>" = [
            "scroll_documentation_up"
            "fallback"
          ];
          "<C-e>" = [
            "hide"
          ];
          "<C-f>" = [
            "scroll_documentation_down"
            "fallback"
          ];
          "<C-n>" = [
            "select_next"
            "fallback"
          ];
          "<C-p>" = [
            "select_prev"
            "fallback"
          ];
          "<C-space>" = [
            "show"
            "show_documentation"
            "hide_documentation"
          ];
          "<C-y>" = [
            "select_and_accept"
          ];
          "<Down>" = [
            "select_next"
            "fallback"
          ];
          "<S-Tab>" = [
            "snippet_backward"
            "fallback"
          ];
          "<Tab>" = [
            "snippet_forward"
            "fallback"
          ];
          "<Up>" = [
            "select_prev"
            "fallback"
          ];
        };
      };
    };
    copilot-lua = {
      enable = true;
      panel.enabled = false;
      filetypes = {
        yaml = false;
        markdown = false;
        help = false;
        gitcommit = false;
        gitrebase = false;
        hgcommit = false;
        svn = false;
        cvs = false;
        "." = false;
        "*" = true;
      };
      suggestion = {
        autoTrigger = true;
        keymap = {
          accept = "<C-l>";
        };
      };
    };
  };
}

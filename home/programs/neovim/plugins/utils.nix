{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      cheatsheet-nvim
      nvim-window-picker
    ];
    plugins = {
      gitblame.enable = true;

      codesnap = {
        enable = true;
        settings = {
          has_breadcrumbs = true;
          breadcrumbs_separator = "/";
          has_line_number = true;
          mac_window_bar = false;
          save_path = "~/Pictures/Screenshots/";
          code_font_family = "Monaspace Radon";
          bg_theme = "default";
          title = "";
          watermark = "";
        };
      };
      precognition = {
        enable = true;
      };
      nix-develop.enable = true;
      auto-session.enable = true;
      rainbow-delimiters.enable = true;
      yazi.enable = true;
      persistence.enable = true;
      flash = {
        enable = true;
        settings.label.rainbow.enabled = true;
      };
      image = {
        enable = true;
        integrations.markdown = {
          clearInInsertMode = true;
          onlyRenderImageAtCursor = true;
        };
      };
      tmux-navigator.enable = true;
      comment.enable = true;
      nvim-autopairs.enable = true;
      todo-comments.enable = true;
      treesitter-context.enable = true;
      treesitter = {
        enable = true;
        nixGrammars = true;
        settings = {
          indent.enable = true;
          highlight.enable = true;
        };
        folding = false;
        grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
      };
      harpoon = {
        enable = true;
        enableTelescope = true;
        keymapsSilent = true;
        keymaps = {
          addFile = "<leader>ha";
          toggleQuickMenu = "<leader>hu";
          navNext = "<leader>hl";
          navPrev = "<leader>hh";
          navFile = {
            "1" = "<leader>h1";
            "2" = "<leader>h2";
            "3" = "<leader>h3";
            "4" = "<leader>h4";
          };
        };
      };
    };
  };
}

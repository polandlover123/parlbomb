{pkgs, ...}: {
  home.packages = with pkgs; [ctags];

  programs.nixvim = {
    colorschemes.oxocarbon.enable = true;
    plugins = {
      barbecue = {
        enable = true;
        settings = {
          theme = "auto";
        };
      };
      fidget = {
        enable = true;
      };
      toggleterm = {
        enable = true;
      };
      zen-mode.enable = true;
      lualine = {
        enable = true;
        settings = {
          options.disabled_filetypes.statusline = ["dashboard" "alpha" "neo-tree"];

          alwaysDivideMiddle = true;
          globalstatus = true;
          ignoreFocus = ["neo-tree"];
          extensions = ["fzf" "oil" "toggleterm"];
          theme = "auto";
          componentSeparators = {
            left = "|";
            right = "|";
          };
          sectionSeparators = {
            left = "█"; # 
            right = "█"; # 
          };
          sections = {
            lualine_a = ["mode"];
            lualine_b = ["branch" "diff" "diagnostics"];
            lualine_c = ["filename"];
            lualine_x = ["filetype"];
            lualine_y = ["progress"];
            lualine_z = [''" " .. os.date("%R")''];
          };
        };
      };
      web-devicons.enable = true;
      notify = {
        enable = true;
        level = "warn";
      };
      noice = {
        enable = true;
        settings = {
          lsp.override = {
            "cmp.entry.get_documentation" = true;
            "vim.lsp.util.convert_input_to_markdown_lines" = true;
            "vim.lsp.util.stylize_markdown" = true;
          };
          views = {
            cmdline_popup.border.style = "single";
            cmdline_popupmenu.border.style = "single";
          };
          presets = {
            bottom_search = true;
            command_palette = true;
            long_message_to_split = true;
            lsp_doc_border = false;
          };
        };
      };
      gitsigns = {
        enable = true;
        settings.current_line_blame = false;
      };
      trouble = {
        enable = true;
        settings.auto_refresh = true;
      };
      indent-blankline.enable = true;
      nvim-colorizer.enable = true;
      tagbar = {
        enable = true;
        tagsPackage = pkgs.universal-ctags;
      };
    };
  };
}

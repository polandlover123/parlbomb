{pkgs, ...}: {
  home.packages = with pkgs; [ctags];

  programs.nixvim = {
    colorschemes.oxocarbon.enable = true;
    # colorschemes = {
    #   base16 = {
    #     enable = true;
    #     settings = {
    #       cmp = true;
    #       illuminate = true;
    #       indentblankline = true;
    #       lsp_semantic = true;
    #       mini_completion = true;
    #       telescope = true;
    #       telescope_borders = true;
    #     };
    #     colorscheme = {
    #       base00 = "#161616";
    #       base01 = "#262626";
    #       base02 = "#393939";
    #       base03 = "#525252";
    #       base04 = "#dde1e6";
    #       base05 = "#f2f4f8";
    #       base06 = "#ffffff";
    #       base07 = "#08bdba";
    #       base08 = "#3ddbd9";
    #       base09 = "#78a9ff";
    #       base0A = "#ee5396";
    #       base0B = "#33b1ff";
    #       base0C = "#ff7eb6";
    #       base0D = "#42be65";
    #       base0E = "#be95ff";
    #       base0F = "#82cfff";
    #     };
    #   };
    # };
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
          options.disabled_filetypes.statusline = ["dashboard" "alpha" "chadtree"];

          alwaysDivideMiddle = true;
          globalstatus = true;
          ignoreFocus = ["chadtree"];
          extensions = ["fzf" "chadtree" "oil" "toggleterm"];
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
          presets = {
            command_palette = true;
            inc_rename = true;
            lsp_doc_border = true;
            long_message_to_split = true;
          };

          views = {
            popupmenu = {
              backend = "cmp";
            };
          };

          notify = {
            enabled = true;
          };

          messages = {
            enabled = true;
          };

          lsp = {
            message = {
              enabled = true;
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

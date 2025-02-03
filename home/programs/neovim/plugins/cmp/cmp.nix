{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      blink-cmp-copilot
    ];
    plugins = {
      lspkind = {
        enable = true;
      };
      blink-compat = {
        settings = {
          impersonate_nvim_cmp = true;
        };
      };
      blink-cmp = {
        enable = true;
        settings = {
          appearance = {
            nerd_font_variant = "mono";
          };
          sources = {
            default = [
              "lsp"
              "path"
              "copilot"
            ];
            providers = {
              lsp = {
                name = "LSP";
                module = "blink.cmp.sources.lsp";
              };
              copilot = {
                name = "copilot";
                module = "blink-cmp-copilot";
              };
            };
          };
          keymap = {
            preset = "super-tab";
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
  };
}

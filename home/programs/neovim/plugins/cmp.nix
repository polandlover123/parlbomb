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
        # keymap = {
        #   accept = "<C-l>";
        #   acceptWord = false;
        #   acceptLine = false;
        #   next = "<C-]>";
        #   prev = "<C-[>";
        #   dismiss = "<C-c>";
        # };
      };
    };
    # cmp = {
    #   enable = true;
    #   settings = {
    #     snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
    #     sorting.comparators = [
    #       "require('cmp.config.compare').offset"
    #       "require('cmp.config.compare').exact"
    #       "require('cmp.config.compare').score"
    #       "require('cmp.config.compare').recently_used"
    #       "require('cmp.config.compare').kind"
    #     ];
    #     sources = [
    #       {
    #         name = "nvim_lsp";
    #         priority = 1000;
    #         entry_filter = ''
    #           function(entry, ctx)
    #             return require('cmp.types').lsp.CompletionItemKind[entry:get_kind()] ~= 'Text'
    #           end
    #         '';
    #       }
    #       {
    #         name = "nvim_lsp_signature_help";
    #         priority = 1000;
    #       }
    #       {
    #         name = "nvim_lsp_document_symbol";
    #         priority = 1000;
    #       }
    #       {
    #         name = "treesitter";
    #         priority = 850;
    #       }
    #       {
    #         name = "luasnip";
    #         priority = 750;
    #       }
    #       {
    #         name = "buffer";
    #         priority = 500;
    #       }
    #       {
    #         name = "copilot";
    #         priority = 400;
    #       }
    #       {
    #         name = "rg";
    #         priority = 300;
    #       }
    #       {
    #         name = "path";
    #         priority = 300;
    #       }
    #       {
    #         name = "cmdline";
    #         priority = 300;
    #       }
    #       {
    #         name = "spell";
    #         priority = 300;
    #       }
    #       {
    #         name = "git";
    #         priority = 250;
    #       }
    #       {
    #         name = "zsh";
    #         priority = 250;
    #       }
    #       {
    #         name = "calc";
    #         priority = 150;
    #       }
    #       {
    #         name = "emoji";
    #         priority = 100;
    #       }
    #     ];
    #     mapping = {
    #       "<C-Space>" = "cmp.mapping.complete()";
    #       "<C-d>" = "cmp.mapping.scroll_docs(-4)";
    #       "<C-e>" = "cmp.mapping.close()";
    #       "<C-f>" = "cmp.mapping.scroll_docs(4)";
    #       "<CR>" = "cmp.mapping.confirm({ select = true })";
    #       "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
    #       "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
    #     };
    #   };
    # };
  };
}

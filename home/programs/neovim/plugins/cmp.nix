{
  programs.nixvim.plugins = {
    luasnip.enable = true;
    blink-cmp.enable = true;
    cmp-buffer = {enable = true;};
    cmp-emoji = {enable = true;};
    cmp-nvim-lsp = {enable = true;};
    cmp-path = {enable = true;};
    cmp_luasnip = {enable = true;};
    copilot-chat.enable = true;
    cmp = {
      enable = true;
      settings = {
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        sources = [
          {name = "nvim_lsp";}
          {name = "luasnip";}
          {
            name = "buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
          {name = "nvim_lua";}
          {name = "mkdnflow";}
          {name = "path";}
        ];
        window = {
          completion = {
            winhighlight = "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel";
            scrollbar = false;
            sidePadding = 0;
            border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
          };

          documentation = {
            border = ["╭" "─" "╮" "│" "╯" "─" "╰" "│"];
            winhighlight = "FloatBorder:CmpBorder,Normal:CmpPmenu,Search:PmenuSel";
          };
        };

        mapping = {
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<Down>" = "cmp.mapping.select_next_item()";
          "<Up>" = "cmp.mapping.select_prev_item()";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })";
        };
      };
    };
  };
}

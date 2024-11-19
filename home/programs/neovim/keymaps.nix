{
  programs.nixvim = {
    plugins.which-key = {
      enable = true;
      settings = {
        icons = {
          breadcrumb = "»";
          group = "+";
          separator = ""; # ➜
          mappings = false;
        };
        spec = [
          # General Mappings
          {
            __unkeyed-1 = "<leader>q";
            mode = "n";
            group = "+quit/session";
          }
          {
            __unkeyed-1 = "<leader>c";
            mode = ["n" "v"];
            group = "+code";
          }
          {
            __unkeyed-1 = "<leader>d";
            mode = ["n" "v"];
            group = "+debug";
          }
          {
            __unkeyed-1 = "<leader>s";
            mode = "n";
            group = "+search";
          }
          {
            __unkeyed-1 = "<leader>m";
            mode = "n";
            group = "+markdown";
          }
          {
            __unkeyed-1 = "<leader>t";
            mode = "n";
            group = "+trouble";
          }
          {
            __unkeyed-1 = "<leader>u";
            mode = "n";
            group = "+ui";
          }
          {
            __unkeyed-1 = "<leader>w";
            mode = "n";
            group = "+windows";
          }
          {
            __unkeyed-1 = "<leader>h";
            mode = "n";
            group = "+harpoon";
          }
          {
            __unkeyed-1 = "<leader><Tab>";
            mode = "n";
            group = "+tab";
          }
        ];
        win = {
          border = "rounded";
          wo.winblend = 0;
        };
      };
    };

    keymaps = [
      # General Mappings
      {
        mode = "n";
        key = "<leader>un";
        action = ''
          <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
        '';
        options = {
          desc = "Dismiss All Notifications";
        };
      }
      {
        key = "<leader>T";
        action = "<cmd>ToggleTerm<cr>";
        options.desc = "terminal";
      }
      {
        key = "<C-S-t>";
        action = "<cmd>ToggleTerm<cr>";
        options.desc = "terminal";
      }
      {
        key = "<leader>e";
        action = "<cmd>Oil --float<cr>";
        options.desc = "Oil";
      }
      {
        key = "-";
        action = "<cmd>Oil<cr>";
        options.desc = "Oil";
      }
      {
        key = "<leader>E";
        action = "<cmd>CHADopen<cr>";
        options.desc = "luh tree";
      }

      {
        key = "s";
        action = "<cmd>lua require('flash').jump()<cr>";
        options.desc = "Flash";
      }
      {
        key = "K";
        action = "<cmd>lua vim.lsp.buf.hover()<cr>";
        options.desc = "LSP Hover";
      }

      {
        key = "<C-h>";
        action = "<cmd>TmuxNavigateLeft<cr>";
      }
      {
        key = "<C-j>";
        action = "<cmd>TmuxNavigateDown<cr>";
      }
      {
        key = "<C-k>";
        action = "<cmd>TmuxNavigateUp<cr>";
      }
      {
        key = "<C-l>";
        action = "<cmd>TmuxNavigateRight<cr>";
      }
      {
        mode = "n";
        key = "<leader>qq";
        action = "<cmd>quitall<cr><esc>";
        options = {
          silent = true;
          desc = "Quit all";
        };
      }

      {
        mode = "n";
        key = "<leader>qs";
        action = ":lua require('persistence').load()<cr>";
        options = {
          silent = true;
          desc = "Restore session";
        };
      }

      {
        mode = "n";
        key = "<leader>ql";
        action = "<cmd>lua require('persistence').load({ last = true })<cr>";
        options = {
          silent = true;
          desc = "Restore last session";
        };
      }

      {
        mode = "n";
        key = "<leader>qd";
        action = "<cmd>lua require('persistence').stop()<cr>";
        options = {
          silent = true;
          desc = "Don't save current session";
        };
      }

      # Toggle
      {
        mode = "n";
        key = "<leader>ul";
        action = ":lua ToggleLineNumber()<cr>";
        options = {
          silent = true;
          desc = "Toggle Line Numbers";
        };
      }

      {
        mode = "n";
        key = "<leader>uL";
        action = ":lua ToggleRelativeLineNumber()<cr>";
        options = {
          silent = true;
          desc = "Toggle Relative Line Numbers";
        };
      }

      {
        mode = "n";
        key = "<leader>uw";
        action = ":lua ToggleWrap()<cr>";
        options = {
          silent = true;
          desc = "Toggle Line Wrap";
        };
      }

      # UI
      {
        key = "<leader>uz";
        action = "<cmd>ZenMode<cr>";
        options.desc = "Toggle ZenMode";
      }
      {
        key = "<leader>uw";
        action = "<cmd>set wrap!<cr>";
        options.desc = "Toggle word wrapping";
      }
      {
        key = "<leader>ul";
        action = "<cmd>set linebreak!<cr>";
        options.desc = "Toggle linebreak";
      }
      {
        key = "<leader>us";
        action = "<cmd>set spell!<cr>";
        options.desc = "Toggle spellcheck";
      }
      {
        key = "<leader>uc";
        action = "<cmd>set cursorline!<cr>";
        options.desc = "Toggle cursorline";
      }
      {
        key = "<leader>un";
        action = "<cmd>set number!<cr>";
        options.desc = "Toggle line numbers";
      }
      {
        key = "<leader>ur";
        action = "<cmd>set relativenumber!<cr>";
        options.desc = "Toggle relative line numbers";
      }
      {
        key = "<leader>ut";
        action = "<cmd>set showtabline=2<cr>";
        options.desc = "Show tabline";
      }
      {
        key = "<leader>uT";
        action = "<cmd>set showtabline=0<cr>";
        options.desc = "Hide tabline";
      }

      # Search
      {
        key = "<leader> ";
        action = "<cmd>lua require('telescope.builtin').find_files()<cr>";
        options.desc = "Telescope";
      }
      {
        key = "<leader>sg";
        action = "<cmd>lua require('telescope.builtin').live_grep()<cr>";
        options.desc = "Livegrep";
      }
      {
        key = "<leader>sf";
        action = "<cmd>lua require('telescope.builtin').find_files()<cr>";
        options.desc = "Find Files";
      }
      {
        key = "<leader>sb";
        action = "<cmd>lua require('telescope.builtin').buffers()<cr>";
        options.desc = "Buffers";
      }
      {
        key = "<leader>sh";
        action = "<cmd>lua require('telescope.builtin').help_tags()<cr>";
        options.desc = "Help Tags";
      }
      {
        key = "<leader>sc";
        action = "<cmd>lua require('telescope.builtin').commands()<cr>";
        options.desc = "Commands";
      }
      {
        key = "<leader>sm";
        action = "<cmd>lua require('telescope.builtin').marks()<cr>";
        options.desc = "Marks";
      }
      {
        key = "<leader>so";
        action = "<cmd>lua require('telescope.builtin').oldfiles()<cr>";
        options.desc = "Oldfiles";
      }
      {
        key = "<leader>ss";
        action = "<cmd>lua require('telescope.builtin').spell_suggest()<cr>";
        options.desc = "Spell Suggest";
      }
      {
        key = "<leader>sr";
        action = "<cmd>:noh<return><esc>";
        options.desc = "Reset search";
      }
      {
        key = "<leader>st";
        action = "<cmd>TodoTelescope<cr>";
        options.desc = "Todos";
      }

      # Trouble
      {
        key = "<leader>tx";
        action = "<cmd>Trouble diagnostics toggle<cr>";
        options.desc = "Diagnostics (Trouble)";
      }
      {
        key = "<leader>tX";
        action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
        options.desc = "Buffer Diagnostics (Trouble)";
      }
      {
        key = "<leader>ts";
        action = "<cmd>Trouble symbols toggle focus=false<cr>";
        options.desc = "Symbols (Trouble)";
      }
      {
        key = "<leader>tl";
        action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
        options.desc = "LSP Definitions / references / ... (Trouble)";
      }
      {
        key = "<leader>tL";
        action = "<cmd>Trouble loclist toggle<cr>";
        options.desc = "Location List (Trouble)";
      }
      {
        key = "<leader>tQ";
        action = "<cmd>Trouble qflist toggle<cr>";
        options.desc = "Quickfix List (Trouble)";
      }

      # Windows
      {
        key = "<leader>ws";
        action = "<cmd>split<cr>";
        options.desc = "Split";
      }
      {
        key = "<leader>wv";
        action = "<cmd>vsplit<cr>";
        options.desc = "VSplit";
      }
      {
        key = "<leader>wd";
        action = "<cmd>close<cr>";
        options.desc = "Close";
      }

      # Code
      {
        key = "<leader>cd";
        action = "<cmd>lua vim.lsp.buf.definition()<cr>";
        options.desc = "LSP Definition";
      }
      {
        key = "<leader>cr";
        action = "<cmd>lua vim.lsp.buf.references()<cr>";
        options.desc = "LSP References";
      }
      {
        key = "<leader>ct";
        action = "<cmd>lua vim.lsp.buf.type_definition()<cr>";
        options.desc = "LSP Type Definition";
      }
      {
        key = "<leader>ca";
        action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
        options.desc = "LSP Code Action";
      }
      {
        key = "<leader>cf";
        action = "<cmd>lua vim.lsp.buf.format()<cr>";
        options.desc = "LSP Formatting";
      }
      {
        key = "<leader>cu";
        action = "<cmd>lua require('dapui').toggle()<CR>";
        options.desc = "Toggle Dapui";
      }
      {
        key = "<leader>cb";
        action = "<cmd>lua require('dap').toggle_breakpoint()<CR>";
        options.desc = "Toggle breakpoint";
      }
      # Tabs
      {
        mode = "n";
        key = "<leader><tab>l";
        action = "<cmd>tablast<cr>";
        options = {
          silent = true;
          desc = "Last tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>f";
        action = "<cmd>tabfirst<cr>";
        options = {
          silent = true;
          desc = "First Tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab><tab>";
        action = "<cmd>tabnew<cr>";
        options = {
          silent = true;
          desc = "New Tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>]";
        action = "<cmd>tabnext<cr>";
        options = {
          silent = true;
          desc = "Next Tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>d";
        action = "<cmd>tabclose<cr>";
        options = {
          silent = true;
          desc = "Close tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>[";
        action = "<cmd>tabprevious<cr>";
        options = {
          silent = true;
          desc = "Previous Tab";
        };
      }
    ];
  };
}

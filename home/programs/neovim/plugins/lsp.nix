{
  programs.nixvim.plugins = {
    typst-vim.enable = true;
    lsp-signature.enable = true;
    lspkind = {
      enable = true;
    };
    lsp-format.enable = true;
    # lsp-lines.enable = true;
    lsp = {
      enable = true;
      keymaps = {
        silent = true;
      };
      servers = {
        nixd = {
          autostart = true;
          enable = true;
          settings = {
            nixpkgs = {
              expr = "import <nixpkgs> { }";
            };
            # options = {
            #   nixos = {
            #     expr = ''
            #       let configs = (builtins.getFlake self.outPath).nixosConfigurations;
            #       in (builtins.head (builtins.attrValues configs)).options'
            #     '';
            #   };
            #   home_manager = {
            #     expr = ''
            #       let configs = (builtins.getFlake self.outPath).homeConfigurations;
            #       in (builtins.head (builtins.attrValues configs)).options
            #     '';
            #   };
            # };
            options = {
              nixos = {
                expr = ''
                  let configs = (builtins.getFlake ("git+file://" + builtins.toString ./.)).nixosConfigurations; in (builtins.head (builtins.attrValues configs)).options
                '';
              };
              home_manager = {
                expr = ''
                  let configs = (builtins.getFlake ("git+file://" + builtins.toString ./.)).nixosConfigurations; in (builtins.head (builtins.attrValues configs)).options.home-manager.users.type.getSubOptions []
                '';
              };
            };
          };
        };
        tinymist.enable = true;
        hyprls.enable = true;
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
          installRustfmt = true;
        };
        bashls.enable = true;
        clangd.enable = true;
        gopls.enable = true;
        tailwindcss.enable = true;
        html.enable = true;
        pyright.enable = true;
        svelte.enable = true;
        marksman.enable = true;
        jsonls.enable = true;
        cssls.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        code_actions = {
          statix.enable = true;
        };
        diagnostics = {
          golangci_lint.enable = true;
          statix.enable = true;
          deadnix.enable = true;
          pylint.enable = true;
          actionlint.enable = true;
        };
        formatting = {
          prettier.enable = true;
          alejandra.enable = true;
          markdownlint.enable = true;
          tidy.enable = true;
          shellharden.enable = true;
          shfmt.enable = true;
        };
      };
    };
  };
}

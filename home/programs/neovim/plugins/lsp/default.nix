{
  imports = [
    ./nonels.nix
    ./lspsaga.nix
    ./trouble.nix
  ];
  programs.nixvim.plugins = {
    lsp-format.enable = true;
    lsp = {
      inlayHints = true;
      enable = true;
      keymaps.silent = true;
      servers = {
        clangd.enable = true;
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
          installRustfmt = true;
        };
        bashls.enable = true;
        gopls.enable = true;
        cssls.enable = true;
        html.enable = true;
        pyright.enable = true;
        jsonls.enable = true;
        nixd = {
          autostart = true;
          enable = true;
          settings = {
            nixpkgs = {
              expr = "import <nixpkgs> { }";
            };
            options = {
              nixos = {
                expr = ''
                  let configs = (builtins.getFlake ("git+file://" + builtins.toString /home/admin/parlbomb)).nixosConfigurations; in (builtins.head (builtins.attrValues configs)).options
                '';
              };
              home_manager = {
                expr = ''
                  let configs = (builtins.getFlake ("git+file://" + builtins.toString /home/admin/parlbomb)).nixosConfigurations; in (builtins.head (builtins.attrValues configs)).options.home-manager.users.type.getSubOptions []
                '';
              };
            };
          };
        };
      };
    };
  };
}

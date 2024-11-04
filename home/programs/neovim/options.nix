{
  programs.nixvim.globals.mapleader = " ";
  # programs.nixvim.extraConfigLua = ''
  #       vim.api.nvim_create_autocmd("LspAttach", {
  #     callback = function(args)
  #       local client = vim.lsp.get_client_by_id(args.data.client_id)
  #       client.server_capabilities.semanticTokensProvider = nil
  #     end,
  #   });
  # '';
  programs.nixvim.opts = {
    updatetime = 50; # Faster completion
    sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions";
    number = true;
    relativenumber = true;

    autoindent = true;
    clipboard = "unnamed,unnamedplus";

    expandtab = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    smartindent = true;
    breakindent = true;

    ignorecase = true;
    incsearch = true;
    hlsearch = true;
    smartcase = true;
    wildmode = "list:longest";
    completeopt = ["menuone" "noselect" "noinsert"];
    signcolumn = "yes";
    cursorline = false;
    scrolloff = 8;
    mouse = "a";
    termguicolors = true;
    showmode = false;

    wrap = false;

    swapfile = false;
    undofile = true;
    conceallevel = 0;
  };
}

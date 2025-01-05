{
  programs.nixvim.plugins = {
    gitsigns = {
      enable = true;
      settings = {
        current_line_blame = true;
      };
    };
    gitblame = {
      enable = true;
      settings = {
        message_when_not_committed = "please commit this";
      };
    };
  };
}

{
  programs.nixvim = {
    plugins.telescope = {
      enable = true;
      extensions.fzf-native = {enable = true;};
      settings.defaults = {selection_caret = "❚ ";};
    };
  };
}

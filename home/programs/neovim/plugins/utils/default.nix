{
  imports = [
    ./git.nix
    ./precognition.nix
    ./telescope.nix
    ./treesitter.nix
  ];
  programs.nixvim.plugins = {
    tmux-navigator.enable = true;
  };
}

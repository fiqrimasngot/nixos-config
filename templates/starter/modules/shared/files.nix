{ pkgs, config, ... }:

{
  home.file.".zsh_history" = {
    source = "./zsh_history";
  };  
  home.file.".ssh" = {
    source = "./ssh";
    recursive = true;
  };
  home.file."./.config/nvim" = {
    source = "./config/nvim";
    recursive = true;
  };
  # Initializes Emacs with org-mode so we can tangle the main config
  ".emacs.d/init.el" = {
    text = builtins.readFile ../shared/config/emacs/init.el;
  };
}

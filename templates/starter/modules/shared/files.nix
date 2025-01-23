{ pkgs, config, ... }:


{
  ".zsh_history" = {
    source = "./.zsh_history";
  };  
  ".ssh" = {
    source = "./.ssh";
    recursive = true;
  };
  "config/nvim" = {
    source = "./.config/nvim";
    recursive = true;
  };
  # Initializes Emacs with org-mode so we can tangle the main config
  ".emacs.d/init.el" = {
    text = builtins.readFile ../shared/config/emacs/init.el;
  };
}

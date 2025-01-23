{ pkgs }:

with pkgs; [
  # General packages for development and system management
  alacritty
  aspell
  aspellDicts.en
  bash-completion
  bat
  mkalias
  mtr
  btop
  gh
  coreutils
  killall
  cloudflared
  ipmitool
  lftp
  mas
  kubernetes
  neofetch
  mise
  openssh
  go
  mosh
  sqlite
  wget
  lazygit
  zip
  inetutils
  tree
  antibody
  obsidian
  eza
  fzf

  # Encryption and security tools
  age
  age-plugin-yubikey
  gnupg
  bitwarden-desktop
  libfido2

  # Cloud-related tools and SDKs
  docker
  docker-compose

  # Media-related packages
  emacs-all-the-icons-fonts
  dejavu_fonts
  ffmpeg
  fd
  font-awesome
  hack-font
  noto-fonts
  noto-fonts-emoji
  meslo-lgs-nf

  # Node.js development tools
  nodePackages.npm # globally install npm
  nodePackages.prettier
  nodejs

  # Text and terminal utilities
  neovim
  htop
  hunspell
  iftop
  jetbrains-mono
  jq
  ripgrep
  tree
  tmux
  unrar
  unzip
  zsh-powerlevel10k

  # Python packages
  python3
  virtualenv
]

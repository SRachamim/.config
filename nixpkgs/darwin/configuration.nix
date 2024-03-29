{ config, pkgs, ... }:

{
  environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  environment.systemPackages =
    [
      pkgs.azure-cli
      pkgs.bat
      pkgs.ctags
      pkgs.curl
      pkgs.emacs
      pkgs.fzf
      pkgs.gawk
      pkgs.git
      pkgs.gitAndTools.gh
      pkgs.glow
      pkgs.gnugrep
      pkgs.gnumake
      pkgs.gnused
      pkgs.gomuks
      pkgs.imagemagick7
      pkgs.joplin
      pkgs.jq
      pkgs.kitty
      pkgs.kubectl
      pkgs.less
      pkgs.lsd
      pkgs.minisign
      pkgs.mpv
      pkgs.neofetch
      pkgs.neovim
      pkgs.openvpn
      pkgs.perl
      pkgs.perl532Packages.CPAN
      pkgs.pirate-get
      pkgs.pup
      pkgs.ranger
      pkgs.ripgrep
      pkgs.ruby
      pkgs.scheme48
      pkgs.shfmt
      pkgs.speedtest-cli
      pkgs.spotify-tui
      pkgs.starship
      pkgs.stig
      pkgs.telnet
      pkgs.ticker
      pkgs.tmux
      pkgs.tmuxinator
      pkgs.translate-shell
      pkgs.tree
      pkgs.unixtools.column
      pkgs.youtube-dl
      pkgs.zsh-autosuggestions
      pkgs.zulip-term
    ];

  environment.variables =
    {
      FZF=''${pkgs.fzf}'';
      ZDOTDIR="$HOME/.config/zsh";
    };

  fonts.enableFontDir = true;

  fonts.fonts =
    [
      pkgs.nerdfonts
    ];

  programs.zsh.enable = true;

  programs.zsh.enableFzfCompletion = true;

  programs.zsh.enableSyntaxHighlighting = true;

  programs.zsh.interactiveShellInit =
    ''
      source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    '';

  programs.zsh.promptInit = "";

  system.defaults.dock.autohide = true;

  system.defaults.dock.mru-spaces = false;

  system.keyboard.enableKeyMapping = true;

  system.keyboard.remapCapsLockToEscape = true;

  system.stateVersion = 4;
}

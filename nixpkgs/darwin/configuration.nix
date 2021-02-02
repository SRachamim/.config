{ config, pkgs, ... }:

{
  environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  environment.systemPackages =
    [
      pkgs.bat
      pkgs.castnow
      pkgs.ctags
      pkgs.curl
      pkgs.fzf
      pkgs.git
      pkgs.imagemagick7
      pkgs.jq
      pkgs.kitty
      pkgs.lsd
      pkgs.mpv
      pkgs.neofetch
      pkgs.neovim
      pkgs.nodejs-14_x
      pkgs.openvpn
      pkgs.pirate-get
      pkgs.python38Packages.subliminal
      pkgs.ranger
      pkgs.ripgrep
      pkgs.ruby_2_7
      pkgs.spaceship-prompt
      pkgs.speedtest-cli
      pkgs.spotify-tui
      pkgs.tmuxPlugins.urlview
      pkgs.tmuxinator
      pkgs.translate-shell
      pkgs.tree
      pkgs.yarn
      pkgs.youtube-dl
      pkgs.zsh-autosuggestions
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

  programs.tmux.enable = true;

  programs.tmux.enableFzf = true;

  programs.tmux.enableSensible = true;

  programs.tmux.enableVim = true;

  programs.tmux.extraConfig =
    ''
      set -g default-terminal "screen-256color"
      set-option -sa terminal-overrides ",xterm-kitty:RGB"

      # set shell to the default one
      set-option -g default-shell $SHELL

      # Start windows and panes at 1, not 0
      set -g base-index 1
      setw -g pane-base-index 1

      # prevent escape delay
      set -sg escape-time 0

      run-shell ${pkgs.tmuxPlugins.urlview.rtp}
    '';

  programs.zsh.enable = true;

  programs.zsh.enableSyntaxHighlighting = true;

  programs.zsh.interactiveShellInit =
    ''
      source ${pkgs.spaceship-prompt}/share/zsh/themes/spaceship.zsh-theme
      source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    '';

  programs.zsh.promptInit = "";

  system.defaults.dock.autohide = true;

  system.defaults.dock.mru-spaces = false;

  system.keyboard.enableKeyMapping = true;

  system.keyboard.remapCapsLockToEscape = true;

  system.stateVersion = 4;

}

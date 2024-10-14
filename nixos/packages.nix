{ pkgs, pkgs-stable, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;
  
  environment.systemPackages = (with pkgs; [
    sqlite fastfetch
    trash-cli gtrash

    # workflow
    zip unzip unar unrar-wrapper
    atool bat
    yazi jq fd ouch ffmpegthumbnailer poppler poppler_utils broot fzf 
    foot fish
    goread
    bemenu clipman keepmenu
    neovim ripgrep silicon neovim-remote
    lazygit lazydocker
    # termshark
    gdu btop
    mpv nomacs

    # programs
    figma-linux
    librewolf
    brave
    burpsuite zap
    pavucontrol
    heroic
    telegram-desktop
    drawing
    libreoffice
    keepassxc
    dialect
    discord betterdiscordctl vesktop
    revolt-desktop
    android-file-transfer

    gimp
    obs-studio
    audacity
    libwebp
    kdenlive
    olive-editor
  ]);
}

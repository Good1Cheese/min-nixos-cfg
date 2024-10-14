{ pkgs, ... }: {
  environment.systemPackages = (with pkgs; [
    sqlite fastfetch
    trash-cli gtrash

    lazygit lazydocker

    # workflow
    zip unzip unar unrar-wrapper
    atool bat
    yazi jq fd ouch ffmpegthumbnailer poppler poppler_utils broot fzf 
    foot fish
    goread
    bemenu clipman keepmenu
    neovim ripgrep silicon neovim-remote
    # termshark
    gdu btop
    mpv nomacs

    # daily
    figma-linux
    librewolf brave
    libreoffice
    keepassxc

    # stuff
    drawing
    pavucontrol
    dialect
    android-file-transfer
    heroic
    burpsuite zap

    # social
    telegram-desktop
    discord betterdiscordctl vesktop
    revolt-desktop

    # video editing
    gimp
    obs-studio
    audacity
    libwebp
    kdenlive
    olive-editor
  ]);
}

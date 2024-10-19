{ pkgs, ... }: {
  environment.systemPackages = (with pkgs; [
    xdragon
    sqlite fastfetch
    trash-cli gtrash

    lazygit lazydocker

    # workflow
    bison
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
    keepassxc wtype python312Packages.pynput python312Packages.pykeepass

    # stuff
    drawing
    pavucontrol
    anydesk
    dialect
    android-file-transfer
    heroic
    burpsuite zap
    nwg-look

    # social
    telegram-desktop
    # discord betterdiscordctl vesktop
    discord
    revolt-desktop
    teamspeak_client

    # video editing
    gimp
    obs-studio
    audacity
    libwebp
    kdenlive
    olive-editor
  ]);
}

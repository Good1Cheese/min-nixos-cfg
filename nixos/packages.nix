{ pkgs, pkgs-stable, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;
  
  environment.systemPackages = (with pkgs; [
    # imp
    waybar home-manager
    xorg.xlsclients
    # xorg.libX11
    # xwayland-satellite
    wl-clipboard xwayland
    gammastep swaybg mako libnotify
    hyprcursor wtype
    hyprshot grim slurp hyprpicker
    xdragon

    # utils
    espeak-classic
    libwebp
    sqlite wget git stow gcc
    gnumake fastfetch
    zip unzip unar unrar-wrapper
    lshw ffmpeg openssl pugixml
    doas atool bat
    trash-cli gtrash
    util-linux
    killall
    yt-dlp

    # workflow
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
    gimp-with-plugins
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
    lxde.lxsession
    android-file-transfer
    obs-studio
    audacity
    kdenlive
    olive-editor
  ]) 

  ++

  (with pkgs-stable; [
    # stuff
  ]);

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "DejaVuSansMono" ]; })
    league-gothic
    font-awesome
    noto-fonts
  ];
}

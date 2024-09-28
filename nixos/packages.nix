{ pkgs, pkgs-stable, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;
  
  environment.systemPackages = (with pkgs; [
    # imp
    waybar home-manager
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
    python312Packages.adblock 
    python312Packages.pynput
    python312Packages.pykeepass

    # workflow
    yazi jq fd ouch ffmpegthumbnailer poppler broot fzf 
    foot fish
    goread
    bemenu clipman keepmenu
    neovim ripgrep silicon neovim-remote
    lazygit gdu btop
    mpv nomacs

    # programs
    gimp-with-plugins
    openshot-qt libsForQt5.libopenshot libsForQt5.libopenshot-audio
    librewolf
    burpsuite zap
    pavucontrol
    heroic
    telegram-desktop
    drawing
    libreoffice
    keepassxc
    dialect
    obs-studio
    discord betterdiscordctl vesktop
    lxde.lxsession
    android-file-transfer
    kdenlive
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

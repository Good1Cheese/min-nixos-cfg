{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    # imp
    waybar home-manager
    wl-clipboard xwayland
    gammastep swaybg mako libnotify
    hyprcursor wtype
    hyprshot grim slurp hyprpicker

    # utils
    espeak-classic
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
    russ goread nom
    bemenu clipman keepmenu
    neovim ripgrep
    # silicon
    lazygit gdu btop
    mpv nomacs

    # programs
    qutebrowser librewolf
    burpsuite zap
    pavucontrol
    heroic
    telegram-desktop
    gajim
    drawing
    libreoffice
    keepassxc
    discord betterdiscordctl vesktop
    gparted lxde.lxsession
    xfce.thunar mate.caja
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "DejaVuSansMono" ]; })
	font-awesome
	noto-fonts
  ];
}

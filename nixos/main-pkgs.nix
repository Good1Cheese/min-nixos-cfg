{ pkgs, pkgs-stable, ... }: {
  imports = [
    ./pkgs.nix
  ];

  environment.systemPackages = (with pkgs; [
    home-manager
    waybar
    wl-clipboard
    xwayland
    hyprcursor

    lxde.lxsession # needed for polkit
    gammastep # night light
    hyprshot grim slurp hyprpicker # screenshots
    swaybg # wallpapers
    mako # desktop notifications

    # utils
    wget
    git
    stow
    gcc
    gnumake
    ffmpeg
    openssl
    util-linux
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

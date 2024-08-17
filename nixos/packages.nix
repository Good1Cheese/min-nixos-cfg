{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    papirus-nord
    home-manager
	libsForQt5.qtstyleplugin-kvantum
	libsForQt5.qt5ct

	# imp
	pkgs.waybar wl-clipboard xwayland
	gammastep swaybg mako
	foot fish
	fuzzel bemenu
	clipman

    # utils
	espeak-classic
	sqlite wget git stow gcc
	gnumake devour fastfetch
	zip unzip unar unrar-wrapper
	lshw ffmpeg openssl pugixml
	doas atool bat
	trash-cli gtrash
	bluez bluez-tools bluetuith

	# workflow
	yazi jq fd ouch ffmpegthumbnailer poppler broot fzf 
	neovim vim ripgrep silicon
	lazygit gdu btop
	python312Packages.adblock qutebrowser

	# programs
	firefox burpsuite zap
	pavucontrol heroic
	telegram-desktop gajim

	drawing
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "DejaVuSansMono" ]; })
	font-awesome
	noto-fonts
  ];
}

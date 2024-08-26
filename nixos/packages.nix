{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    papirus-nord
	libsForQt5.qtstyleplugin-kvantum
	libsForQt5.qt5ct

	# imp
	pkgs.waybar home-manager
	wl-clipboard xwayland
	gammastep swaybg mako

    # utils
	espeak-classic
	sqlite wget git stow gcc
	gnumake fastfetch
	zip unzip unar unrar-wrapper
	lshw ffmpeg openssl pugixml
	doas atool bat
	trash-cli gtrash

	# workflow
	yazi jq fd ouch ffmpegthumbnailer poppler broot fzf 
	foot fish
	russ goread nom
	bemenu clipman
	neovim ripgrep
	# silicon
	lazygit gdu btop
	mpv nomacs
	python312Packages.adblock qutebrowser

	# programs
	firefox burpsuite zap
	pavucontrol heroic
	telegram-desktop gajim
	drawing libreoffice
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "DejaVuSansMono" ]; })
	font-awesome
	noto-fonts
  ];
}

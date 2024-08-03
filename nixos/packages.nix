{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
	# allowBroken = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    # utils
    wl-clipboard pkgs.waybar
	wget git stow gcc lshw jq
    gnumake devour fastfetch
	zip unzip ffmpeg openssl

    # stuff
    fd ouch unar
	unrar-wrapper ffmpegthumbnailer poppler
	chafa doas broot fzf atool
	trash-cli gtrash
	ripgrep silicon

    # workflow
	bluez bluez-tools bluetuith
	foot fish neovim yazi superfile
	python312Packages.adblock qutebrowser
	firefox burpsuite zap
	# connman impala
	lazygit mako btop
	fuzzel clipman bemenu
	gammastep swww swaybg gdu

	ghidra

	pavucontrol heroic

	xwayland
	telegram-desktop gajim
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "DejaVuSansMono" ]; })
	font-awesome
	noto-fonts
  ];
}

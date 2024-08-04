{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
	# allowBroken = true;
  };

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
	# imp
	pkgs.waybar wl-clipboard xwayland
	gammastep swaybg mako
	foot fish
	fuzzel clipman

    # utils
	sqlite wget git stow gcc
	gnumake devour fastfetch
	zip unzip unar unrar-wrapper
	lshw ffmpeg openssl
	doas atool
	trash-cli gtrash
	bluez bluez-tools bluetuith

	# workflow
	yazi jq fd ouch ffmpegthumbnailer poppler broot fzf 
	neovim ripgrep silicon
	lazygit gdu btop
	python312Packages.adblock qutebrowser

	# programs
	firefox burpsuite zap
	ghidra pavucontrol heroic
	telegram-desktop gajim
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "DejaVuSansMono" ]; })
	font-awesome
	noto-fonts
  ];
}

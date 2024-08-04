{
  boot.loader.systemd-boot.configurationLimit = 5;
  nix.settings.auto-optimise-store = true;
  nix.gc = {
    automatic = true;
    dates = "daily";
	options = "--delete-older-than 10d";
  };
}

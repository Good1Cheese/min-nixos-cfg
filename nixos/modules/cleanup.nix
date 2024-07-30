{
  boot.loader.systemd-boot.configurationLimit = 5;
  nix.settings.auto-optimise-store = true;
  nix.gc.automatic = true;
  nix.gc.dates = "daily";
}

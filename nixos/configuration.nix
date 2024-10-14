{
  imports = [
    ./hardware-configuration.nix
    ./modules/bundle.nix
    ./programs/bundle.nix
    ./main-pkgs.nix
  ];

  networking.wireless.iwd.enable = true;
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05"; # Did you read the comment?
}

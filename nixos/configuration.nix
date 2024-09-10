{
  imports = [
    ./hardware-configuration.nix
    ./modules/bundle.nix
    ./packages.nix
    ./programs/bundle.nix
  ];

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05"; # Did you read the comment?
}

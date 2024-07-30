{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # support both 32- and 64-bit applications
    wineWowPackages.stable

	winetricks

    # wine
    # wine64
    # wineWowPackages.staging
    # winetricks (all versions)
  ];
}

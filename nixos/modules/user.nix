{ pkgs, ... }: {
  programs.fish.enable = true;

  users = {
    # defaultUserShell = pkgs.fish;

    users.cheese = {
      isNormalUser = true;
      description = "cheese";
      extraGroups = [ "adbusers" "networkmanager" "video" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [ ];
    };
  };
}

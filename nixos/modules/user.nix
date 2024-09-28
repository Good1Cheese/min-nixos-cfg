{ pkgs, ... }: {
  programs.fish.enable = true;

  users = {
    users.cheese = {
      isNormalUser = true;
      description = "cheese";
      extraGroups =
        [ "adbusers" "docker" "networkmanager" "video" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [ ];
    };
  };
}

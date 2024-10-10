# containarization and stuff

{ pkgs, ... }: {

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  environment.systemPackages = with pkgs; [ 
    xwayland weston 
    x11docker catatonit
    xpra xdotool xclip
    xorg.xhost xorg.xrandr xorg.xdpyinfo xorg.xauth xorg.libxcvt
  ];
}

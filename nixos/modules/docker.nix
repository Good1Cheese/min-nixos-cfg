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
    weston x11docker catatonit
    xpra nx-libs xdotool xclip

    xorg.xhost xorg.xrandr xorg.xdpyinfo xorg.xauth xorg.libxcvt
    xorg.xinit
  ];
}

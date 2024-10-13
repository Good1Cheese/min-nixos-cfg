{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [ scrcpy v4l-utils ];

  boot = {
    extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];
    kernelModules = [
      # Virtual camera.
      "v4l2loopback"
      # Virtual Microphone. Custom DroidCam v4l2loopback driver needed for audio.
      #    "snd-aloop"
    ];
  };
}

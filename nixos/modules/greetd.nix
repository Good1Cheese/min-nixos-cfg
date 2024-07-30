{
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "Hyprland";
        user = "cheese";
      };
      default_session = initial_session;
    };
  };
}

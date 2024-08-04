{ config, pkgs, ... }: {
  home = {
    username = "cheese";
    homeDirectory = "/home/cheese";
    stateVersion = "24.05"; # Did you read the comment?
  };

  # programs.neovim = {
  #   enable = true;
  #   defaultEditor = true;
  #   plugins = [{
  #     plugin = pkgs.vimPlugins.sqlite-lua;
  #     config =
  #       "let g:sqlite_clib_path = '${pkgs.sqlite.out}/lib/libsqlite3.so'";
  #   }];
  # };
}

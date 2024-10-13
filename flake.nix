{
  description = "System config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager";
    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, # nixpkgs-stable,
    home-manager, nix-index-database, ... }:
    let
      system = "x86_64-linux";
      # pkgs-stable = nixpkgs-stable.legacyPackages.${system};
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos/configuration.nix
          nix-index-database.nixosModules.nix-index
        ];
        # specialArgs = { inherit pkgs-stable; };
      };

      homeConfigurations.cheese = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ ./nixos/home.nix ];
      };
    };
}

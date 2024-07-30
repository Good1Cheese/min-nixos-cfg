{
    description = "System config";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        # nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    };

    outputs = { nixpkgs, ... }: {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [ ./nixos/configuration.nix ];
        };
    };
}

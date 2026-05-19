{
  nixConfig = {
    extra-substituters = "https://srid.cachix.org https://cache.garnix.io";
    extra-trusted-public-keys = "srid.cachix.org-1:3clnql5gjbJNEvhA/WQp7nrZlBptwpXnUk6JAv8aB2M= cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g=";
  };

  inputs = {
    # Pinned to release tag — do not float to master (see update-flake-lock workflow).
    emanote.url = "github:srid/emanote/1.4.0.0";
    nixpkgs.follows = "emanote/nixpkgs";
    flake-parts.follows = "emanote/flake-parts";
  };

  outputs = inputs@{ self, flake-parts, nixpkgs, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [ inputs.emanote.flakeModule ];
      perSystem = { self', pkgs, system, ... }: {
        emanote = {
          sites.default = {
            layers = [{ path = ./.; pathString = "."; }];
            extraConfig = {
              template = {
                baseUrl = "/";
                urlStrategy = "pretty";
              };
            };
          };
        };
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.nixpkgs-fmt
          ];
        };
        formatter = pkgs.nixpkgs-fmt;
      };

      # CI configuration
      flake.herculesCI.ciSystems = [ "x86_64-linux" "aarch64-darwin" ];
    };
}

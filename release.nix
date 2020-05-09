let
  pkgs = import ./nixpkgs.nix {};
in
  rec {

    go-nix-example = pkgs.callPackage ./default.nix {};

    go-nix-container = pkgs.dockerTools.buildLayeredImage {
      name = "go-nix-example";
      config.Cmd = [ "${go-nix-example}/bin/go-nix-example" ];
    };

  }

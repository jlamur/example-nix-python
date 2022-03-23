let
  pkgs = import ./pkgs.nix;
in
  pkgs.dockerTools.buildLayeredImage {
    name = "example-nix-python";
    tag = "latest";
    config = {
      Entrypoint = "myapp";
    };
    contents = [
      (import ./default.nix)
    ];
  }

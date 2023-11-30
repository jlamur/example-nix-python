{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux =
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      name = "myapp";
      version = "0.1";
    in rec {
      default = pkgs.python3Packages.buildPythonApplication {
        inherit version;
        pname = name;
        src = ./src;
        propagatedBuildInputs = [ pkgs.python3Packages.flask ];
        meta.mainProgram = name;
      };
      docker = pkgs.dockerTools.buildLayeredImage {
        inherit name;
        tag = version;
        config = {
          Entrypoint = nixpkgs.lib.getExe default;
        };
        contents = [ default ];
      };
    };
  };
}

let
  pkgs = import ./pkgs.nix;
in
  pkgs.python3Packages.buildPythonApplication {
    pname = "myapp";
    src = ./.;
    version = "0.1";
    propagatedBuildInputs = [ pkgs.python3Packages.flask ];
  }

let
  pkgs = import (builtins.fetchTarball {
    url    = "https://github.com/NixOS/nixpkgs/archive/e78d5aae40fba5e4f43499f47997d6ba6906916f.tar.gz";
    sha256 = "0rv3a4slfhkd5724gxpmidrf3y8q71jqin8ny1ybsgm2dqkj3pdd";
  }) {};
in
  pkgs

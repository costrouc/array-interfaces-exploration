let
  # pin version
  pkgs = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/36f316007494c388df1fec434c1e658542e3c3cc.tar.gz";
    sha256 = "1w1dg9ankgi59r2mh0jilccz5c4gv30a6q1k6kv2sn8vfjazwp9k";
  }) { };

  pythonPackages = pkgs.python3Packages;

  src = builtins.filterSource
      (path: _: !builtins.elem  (builtins.baseNameOf path) [".git" "result"])
      ./.;
in
rec {
  shell = pkgs.mkShell {
    buildInputs = with pythonPackages; [ numpy scipy pytorch sparse ];
  };

}

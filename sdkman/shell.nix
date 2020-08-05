{ pkgs ? import <nixpkgs> {} }:
(pkgs.buildFHSUserEnv {
  name = "sdkman";
  targetPkgs = pkgs: (with pkgs;
    [
      zlib
    ]);
  runScript = "bash";
  profile = ''
    export SDKMAN_DIR="/home/markus/opt/sdkman"
    source "$SDKMAN_DIR/bin/sdkman-init.sh"
  '';
}).env

{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.python27
    pkgs.python27Packages.pycryptodome
  ];
}

{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "rainbow";
  buildInputs = with pkgs; [
    gnumake
  ];
}

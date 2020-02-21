{ pkgs ? import <nixpkgs> {} }: with pkgs;

mkShell {
  buildInputs = [ bats shellcheck ];
}

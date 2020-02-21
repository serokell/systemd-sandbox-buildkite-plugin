{ pkgs ? import ./nix {} }: with pkgs;

mkShell {
  buildInputs = [ bats shellcheck nix-prefetch-git bk buildkite-agent ];
}

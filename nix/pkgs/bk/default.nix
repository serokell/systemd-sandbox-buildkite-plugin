{ buildGoPackage, sources }:
buildGoPackage rec {
  name = "bk-cli-${version}";
  version = "1.0.0";
  goPackagePath = "github.com/buildkite/cli";
  goDeps = ./deps.nix;
  src = sources.cli;
}


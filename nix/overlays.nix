{ sources ? import ./sources.nix }:

[(_: super: {
  niv = import sources.niv {};
  bk = super.callPackage ./pkgs/bk { inherit sources; };
})]

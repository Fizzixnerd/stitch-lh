{ pkgs ? import ./nixpkgs.nix {}
, ghc ? pkgs.haskell.compiler.ghc8102
}:

pkgs.haskell.lib.buildStackProject ({
  name = "stitch-lh";
  buildInputs = with pkgs; [ git cvc4 z3 ];
  ghc = ghc;
  LANG = "en_US.utf8";
})

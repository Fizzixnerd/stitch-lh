{ pkgs ?  import <nixpkgs> {}
}:

with pkgs;

haskell.lib.buildStackProject ({
  name = "stitch-lh";
  buildInputs = [ git z3 ];
  ghc = haskell.compiler.ghc8107;
  LANG = "en_US.utf8";
})

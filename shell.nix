#!/usr/bin/env nix-shell
with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "spamwatchapi-docs";
    buildInputs = [ nodejs ruby lzma zlib ];
    shellHook =
  ''
    bundle install
    bundle exec middleman server
  '';
}


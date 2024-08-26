let
  files = builtins.readDir ./.;
  name = "bundle.nix";
  toPath = f: ./. + "/${f}";
in {
  imports =
    builtins.map toPath (builtins.attrNames (removeAttrs files [ name ]));
}


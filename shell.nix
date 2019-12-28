with import <nixpkgs> {};
with pkgs.python36Packages;

stdenv.mkDerivation {
  name = "impureNodeEnv";
  buildInputs = [
    nodejs-10_x
  ];
  src = null;
  shellHook = ''
    # npm config set python python3 >&2
    # npm install ganache-cli >&2
    export PATH=$PWD/node_modules/.bin:$PATH
  '';
}

{ source, stdenv, zola, build-params }:
  stdenv.mkDerivation rec {
    pname = "AntLab";
    version = "0.1.0";
    src = builtins.toString source;
    nativeBuildInputs = [ zola ];
    buildPhase = ''
      ${zola}/bin/zola build --minify ${build-params}
    '';
    installPhase = "cp -r public $out";
}

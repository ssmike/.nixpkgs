{pkgs, fetchurl}:
pkgs.buildPythonPackage {
    name = "keras-2.1.2";
    doCheck = false;
    propagatedBuildInputs = [
        pkgs.numpy
        pkgs.scipy
        pkgs.six
        pkgs.pyyaml
        pkgs.h5py
    ];
    src = fetchurl {
      url = "https://pypi.python.org/packages/8a/35/213dd44b94225f658d6155965a3b5c117761c239b94f6d77758d69a84495/Keras-2.1.2.tar.gz";
      sha256 = "1s6m892b67v6wllz17d5mnbnz0s7c02m0vh42qchpl6r570nzr9y";
    };
}

{fetchurl, python, callPackage}:
let
    keras = callPackage ./keras.nix {pkgs=python.pkgs;};
in
python.withPackages (ps: with ps; [
    scikitlearn
    scikitimage
    scipy
    xgboost
    pandas
    tensorflow
    matplotlib
    jupyter
    ipython
    keras
    gensim
])

{
  packageOverrides = pkgs: with pkgs;
    {
        envs = {
            ml = callPackage ./env/ml.nix {
                python = pkgs.python3;
            };
        };
    };
}

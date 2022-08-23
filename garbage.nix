{ config, pkgs, ... }:

{

    nix.gc = {
        automatic = true;  # Enable the automatic garbage collector
        dates = "weekly";   # When to run the garbage collector
        options = "--delete-older-than 7d";    # Arguments to pass to nix-collect-garbage
    };

}
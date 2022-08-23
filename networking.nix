{ config, pkgs, ... }:


{
    # Enable networking
    networking.hostName = "nixos"; # Define your hostname.
    networking.networkmanager.enable = true;
    hardware.bluetooth.enable = true;
    #networking.wireless.enable = true;

}
# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./networking.nix
      ./boot.nix
      ./locale.nix
      ./graphic.nix
      ./docker.nix
      ./apps/zsh.nix
      ./apps/chromium.nix
      ./sound.nix
    ];


  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Security
  security.sudo.wheelNeedsPassword= false;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.daniel = {
    isNormalUser = true;
    description = "daniel";
    extraGroups = [ "networkmanager" "wheel" "docker"];
    packages = with pkgs; [];
  };

  

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Automatic TRIM for SSDs
  services.fstrim.enable = true;

  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  # Standart Tools
  nano
  kate
  firefox
  pkgs.chromium
  wget
  curl
  neofetch  
  notepadqq
  pkgs.openvpn
  pkgs.zsh-powerlevel10k
  pkgs.zsh
  pkgs.oh-my-zsh

  # Custom Tools
  pkgs.bitwarden
  pkgs.yubioath-desktop
  pkgs.flameshot

  # Virt + Docker
  docker
  os-prober  

  # Design
  pkgs.nordic
  pkgs.arc-kde-theme
  pkgs.meslo-lgs-nf

  # Social
  pkgs.discord
  pkgs.teams
  pkgs.teamspeak_client

  #Coding
  pkgs.gitkraken
  pkgs.jetbrains.phpstorm    
  git
  vscode
  python39
  pkgs.python39Packages.pip
  go
  gcc
  nodejs
  pkgs.php

  #Pentesting
  pkgs.metasploit
  pkgs.nmap
  pkgs.burpsuite
  pkgs.wireshark      
  pkgs.cutter
  pkgs.ghidra
  pkgs.dirb
  pkgs.thc-hydra
  pkgs.hashcat
  pkgs.john
  pkgs.sqlmap
  pkgs.wpscan
  pkgs.exploitdb
  pkgs.gdb  


  ];
 
  
  system.stateVersion = "22.05"; 

}

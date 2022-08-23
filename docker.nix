{ config, pkgs, ... }:


{
  virtualisation.docker.enable = true;
  virtualisation.docker.autoPrune.enable = false;
}
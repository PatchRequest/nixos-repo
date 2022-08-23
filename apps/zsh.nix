{ config, pkgs, ... }:


{
# Shell 
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
  programs.zsh.syntaxHighlighting.enable = true;
  programs.zsh.autosuggestions.enable = true;
  programs.zsh.interactiveShellInit = ''
  export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/
  source $ZSH/oh-my-zsh.sh  
  '';
  programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme;neofetch";
  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
  ];
  environment.shellAliases = {
    enix="sudo nano /home/daniel/nixos-repo/configuration.nix";
    rebuild="sudo nixos-rebuild switch";
    clean="sudo nix-collect-garbage";
  };

}
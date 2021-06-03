{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    htop
    nginx
    neofetch
    tree
    unrar
    wget
    zip
  ];
}

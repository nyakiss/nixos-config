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
    firefox
    spotify
    telegram-desktop
    vscode-fhs
    mpv
    gimp
    pciutils
  ];
}

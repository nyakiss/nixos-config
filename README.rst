my nixos configuration files
############################

**не забываем тестировать и обновляться**
::
    nixos-rebuild test
    nixos-rebuild switch

**Переносим из /etc/**
::
    sudo mv /etc/nixos ~/NixOS
    sudo chown -R cirno:users ~/NixOS
    sudo nixos-rebuild switch --flake ~/NixOS
my nixos configuration files
############################

**не забываем тестировать и обновляться**
::
    sudo nixos-rebuild test --flake ~/NixOS
    sudo nixos-rebuild switch --flake ~/NixOS

**Переносим конфиги из /etc/**
::
    sudo mv /etc/nixos ~/NixOS
    sudo chown -R cirno:users ~/NixOS
    sudo nixos-rebuild switch --flake ~/NixOS

**Проверка файлов на целостность**
::
    sudo nix-store --verify --check-contents --repair

**Удаление старых билдов**
::
    sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot
{ config, pkgs, ... }:

{
  users.users = {
    cirno = {
      isNormalUser = true;
      home = "/home/cirno";
      description = "cirno is not baka";
      extraGroups = [
        "audio"
        "video"
        "wheel"
      ];
    };
  };
  security.sudo.wheelNeedsPassword = false;
}
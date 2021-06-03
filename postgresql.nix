{ config, lib, pkgs, ... }:

{
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_12;
    authentication = lib.mkForce
    ''
      local all postgres         peer
      local all all              md5
      host  all all 127.0.0.1/32 md5
      host  all all ::1/128      md5
    '';
    #ensureUsers.*.name = "username"; №ещё не проверял с этой строкой
    initialScript = ./initialScript.sql;
  };
}

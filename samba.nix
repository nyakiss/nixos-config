{ config, lib, pkgs, ...}:

{
  networking.firewall.allowedTCPPorts = [
    139 445
  ];
  networking.firewall.allowedUDPPorts = [
    137 138
  ];
  services.samba = {
    enable = true;
    enableNmbd = false;
    enableWinbindd = false;
    shares = {
      Media = {
        "comment" = "Media archive";
        "path" = "/var/lib/share/Media";
        "read only" = "yes";
        "browseable" = "yes";
        "guest ok" = "yes";
      };
      Music = {
        "comment" = "Music archive";
        "path" = "/var/lib/share/Media/Music";
        "read only" = "yes";
        "browseable" = "yes";
        "guest ok" = "yes";
      };
    };
  };
}

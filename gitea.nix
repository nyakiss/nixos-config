{ config, lib, pkgs, ... }:

{
 services.gitea = {
  enable = true;
  database.type = "postgres";
 # database.path = "/var/lib/gitea/data/gitea_db";
  #database.createDatabase = true;
#  user = "username";
#  httpAddress = "192.168.1.43";
 };
}

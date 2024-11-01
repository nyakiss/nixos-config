{ config, lib, pkgs, ... }:

with lib; {
  # Select internationalization properties.
  console =  {
    earlySetup = mkDefault true;
    font = mkDefault "ter-v16n";
    packages = [ pkgs.terminus_font ];
    useXkbConfig = mkDefault true;
  };

  i18n.defaultLocale = mkDefault "ru_RU.UTF-8";

services.xserver.xkb = {
    model = "pc105";
    layout = "us,ru";
    options = "grp:caps_toggle,grp_led:caps,compose:ralt";
  };

  time.timeZone = mkDefault "Asia/Novokuznetsk";
}
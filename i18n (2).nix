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

  services.xserver = {
    xkbModel = "pc105";
    layout = "us,ru";
    xkbOptions = "grp:caps_toggle,grp_led:caps";
  };

  # Set your time zone.
  time.timeZone = mkDefault "Europe/Kiev";
}

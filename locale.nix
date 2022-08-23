{ config, pkgs, ... }:


{
  # Set your time zone.
  time.timeZone = "Europe/Berlin";
  time.hardwareClockInLocalTime = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "de_DE.utf8";


  # Configure console keymap
  console.keyMap = "de";

}
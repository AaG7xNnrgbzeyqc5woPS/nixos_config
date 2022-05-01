{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    desktopManager.pantheon = {
      enable = true;
      debug = true;
    };

   # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;

  };
}

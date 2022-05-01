{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;   # Enable the X11 windowing system.
    layout = "us";   # Configure keymap in X11
    
    # Enable the GNOME Desktop Environment.
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;

    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;
  };
}

{ config, pkgs, ... }:

{
  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

/* 
   file:///nix/store/kd5da4mly1yw25n8gpz8dprzdwmrhrl1-nixos-manual-html/share/doc/nixos/index.html#sec-upgrading

   This enables a periodically executed systemd service named nixos-upgrade.service. 
   If the allowReboot option is false, it runs nixos-rebuild switch --upgrade 
   to upgrade NixOS to the latest version in the current channel. 
   (To see when the service runs, see systemctl list-timers.) 
   If allowReboot is true, then the system will automatically reboot 
   if the new generation contains a different kernel, initrd or kernel modules. 
   You can also specify a channel explicitly,
*/
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = false;
  #system.autoUpgrade.channel = https://nixos.org/channels/nixos-21.05;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).

  #system.stateVersion = "21.05"; # Did you read the comment?
  #system.stateVersion = "22.05"; # Did you read the comment?  
  system.stateVersion = "21.11";
}

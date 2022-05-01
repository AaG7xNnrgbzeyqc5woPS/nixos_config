{ config, pkgs, ... }:

{
  # Search more than 80 000 packages
  # https://search.nixos.org/packages
  imports = [
    ./fonts.nix
    ./i18n.nix
    ./network.nix
    ./gnome.nix   #Very good! test ok! 2021.9.18
#    ./pantheon.nix
    ./system.nix
    ./users.nix
    ./virtualisation.nix
    ./syncthing.nix
 ];
}

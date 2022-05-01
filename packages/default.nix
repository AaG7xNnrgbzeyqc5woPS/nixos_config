{ config, pkgs, ... }:

{
  imports = [
#    ./mirror_sites.nix
    ./nixpkgs.nix
 ];
}

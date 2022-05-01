{ config, pkgs, ... }:

{


  virtualisation = {

/*    virtualbox.host = { 
      enable = true; 
      enableExtensionPack = true; 
    };
*/


#    docker = {
#      enable = true;
#      enableOnBoot = false;
#    };

    podman = {
      enable = true;
      dockerCompat = true;
    };
  };

  
  
  #services.flatpak.enable = true;
}

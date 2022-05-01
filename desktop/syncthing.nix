{ config, pkgs, ... }:

{
  services = {

  # See: https://nixos.wiki/wiki/Syncthing
    syncthing = {
        enable = true;
        user = "John";
        dataDir = "/home/John/depot/Sync";    # Default folder for new synced folders
        configDir = "/home/John/depot/Sync/.config/syncthing";   # Folder for Syncthing's settings and keys

        # version 21.11 now!
          overrideDevices = true;     # overrides any devices added or deleted through the WebUI
          overrideFolders = true;     # overrides any folders added or deleted through the WebUI
          devices = {
            "OpenWrt" = { id = "L6XCK35-S5MLVGJ-TPERWNP-CH5J44F-W2S5SXK-6XR3KDU-2DKU4QZ-BRLQGAS"; };
            #"device2" = { id = "DEVICE-ID-GOES-HERE"; };
          };

          folders = {
            "Second.Brain" = {        # Name of folder in Syncthing, also the folder ID
              path = "/home/John/depot/Second.Brain";    # Which folder to add to Syncthing
              devices = [ "OpenWrt"];      # Which devices to share the folder with
            };
          };
    };
  };

}

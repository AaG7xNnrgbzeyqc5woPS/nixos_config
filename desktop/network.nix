{ config, pkgs, ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
   # networkmanager.unmanaged = [
   #   "*" "except:type:wwan" "except:type:gsm"
   # ];

/*
    wireless.enable = true;         # Enables wireless support via wpa_supplicant.
    wireless.interfaces = ["wlp2s0"];
 
    # If you are using WPA2 you can generate pskRaw key using wpa_passphrase:
    # wpa_passphrase ESSID PSK
    # wpa_passphrase 0833_5G "****"
    wireless.networks = {
        "0833_5G" = {
          #psk="****"
          pskRaw = "d3bfad9723acdf730d77c6e65c73efb0997b0d7908f31ec31237f088cb450450";
        };
    };
*/

    # The global useDHCP flag is deprecated, therefore explicitly set to false h>
    # Per-interface useDHCP will be mandatory in the future, so this generated c>
    # replicates the default behaviour.
    useDHCP = false;
#    interfaces.wlp2s0.useDHCP = true;
    
    # Configure network proxy if necessary
    proxy.default = "http://192.168.2.2:9995";
    proxy.noProxy  = "127.0.0.1,localhost,192.168.*.*";
  
  };

  services.fstrim = {
    enable = true;
    interval = "tuesday";  
  };
}

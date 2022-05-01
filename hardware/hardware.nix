{ config, lib, pkgs, modulesPath, ... }:

{
  fileSystems."/home/John/depot" =
    { device = "/dev/disk/by-uuid/9d435ca4-8384-48a0-8ef5-681e698e8565";
      fsType = "ext4";
    };
}

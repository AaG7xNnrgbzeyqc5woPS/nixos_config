{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.John = { 
    isNormalUser = true;
    description = "John";
    extraGroups = [ "wheel" "networkmanager" "docker"];  # Enable ‘sudo’ for the user.
  };
}

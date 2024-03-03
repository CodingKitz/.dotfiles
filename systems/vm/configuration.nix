# Configuration file used to test home-manager build in a virtual machine 

{ config, lib, pkgs, ... }:
let
  user = "codingkitz";
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz";
in
{
  imports =
    [
      (import "${home-manager}/nixos")
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  users.users.${user} = {
    isNormalUser = true;
    extraGroups = [ ];
    packages = with pkgs; [ ];
    initialPassword = "${user}";
  };

  home-manager.users.${user} = import ../../home-manager/home.nix;
  environment.systemPackages = with pkgs; [];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "23.11";
}


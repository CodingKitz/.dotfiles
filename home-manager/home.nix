{ config, pkgs, ... }:
let
  user = "codingkitz";
in
{
  home.username = "${user}";
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "23.11";

  home.packages = with pkgs; [];

  home.file.".config/home-manager/home.nix" = {
    source = ./home.nix;
  };

  programs = {
    neovim = { enable = true; };
  };

  home.enableNixpkgsReleaseCheck = false;
  programs.home-manager.enable = true;
}

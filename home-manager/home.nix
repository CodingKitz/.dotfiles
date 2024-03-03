{ config, pkgs, ... }:
let
  user = "codingkitz";
in
{
  home.username = "${user}";
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    home-manager
  ];

  home.file.".config/home-manager/home.nix" = {
    source = ./home.nix;
  };

  programs = {
    neovim = { enable = true; };
  };

  programs.home-manager.enable = true;
}

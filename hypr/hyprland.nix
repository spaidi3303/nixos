{ config, pkgs, ... }:

let
  hyprConf = ./hyprland.conf;
in
{
  programs.hyprland = {
    enable = true;
  };

  home.file.".config/hypr/hyprland.conf".source = hyprConf;

  environment.systemPackages = with pkgs; [
    hyprland
    hyprpaper
    kitty
  ];
}

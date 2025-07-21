{ config, pkgs, ... }:

let
  hyprConf = ./hyprland.conf;
  hyprpaperConf = ./hyprpaper.conf;
  pyprConf = ./pypr;
in {

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland
    hyprpaper
    hyprshot
    hyprpanel
  ];


}

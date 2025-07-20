{ config, pkgs, ... }:

let
  hyprConf = ./hyprland.conf;
in
{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  home.file.".config/hypr/hyprland.conf".source = hyprConf;

  home.packages = with pkgs; [
    hyprland
    hyprpaper
    kitty
    hyprshot
    hyprpanel
    ];
}

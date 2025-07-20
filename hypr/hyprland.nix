{ config, pkgs, ... }:

let
  hyprConf = ./hyprland.conf;
  hyprpaperConf = ./hyprpaper.conf;
in {

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland
    hyprpaper
    hyprshot
    hyprpanel
  ];

  system.activationScripts.copyHyprlandConfig.text = ''
    mkdir -p /home/sammy/.config/hypr
    cp ${toString hyprConf} /home/sammy/.config/hypr/hyprland.conf
    chown -R sammy:users /home/sammy/.config/hypr
  '';

  system.activationScripts.copyHyprpaperConfig.text = ''
    mkdir -p /home/sammy/.config/hypr
    cp ${toString hyprpaperConf} /home/sammy/.config/hypr/hyprpaper.conf
  '';
}

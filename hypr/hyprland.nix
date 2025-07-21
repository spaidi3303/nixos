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

  system.activationScripts.copyHyprlandConfig.text = ''
    unlink /home/sammy/.config/hypr/hyprland.conf
    mkdir -p /home/sammy/.config/hypr
    cp ${toString hyprConf} /home/sammy/.config/hypr/hyprland.conf
  '';

  system.activationScripts.copyHyprpaperConfig.text = ''
    unlink /home/sammy/.config/hypr/hyprpaper.conf
    cp ${toString hyprpaperConf} /home/sammy/.config/hypr/hyprpaper.conf
    chown -R sammy:users /home/sammy/.config/hypr
  '';
}

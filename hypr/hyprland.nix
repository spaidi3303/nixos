{ config, pkgs, ... }:

let
  hyprConf = ./hyprland.conf;
in {

  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland
    hyprshot
    hyprpanel
  ];
  system.activationScripts.copyHyprlandConfig.text = ''
    unlink /home/sammy/.config/hypr/hyprland.conf
    mkdir -p /home/sammy/.config/hypr
    cp ${toString hyprConf} /home/sammy/.config/hypr/hyprland.conf
    chown -R sammy:users /home/sammy/.config/hypr
  '';



}

{ config, pkgs, ... }:

let
  hyprConf = ./hyprland.conf;
in {
  services.xserver.enable = true;

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
    chown -R sammy:sammy /home/sammy/.config/hypr
  '';
}

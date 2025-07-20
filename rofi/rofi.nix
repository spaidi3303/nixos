{ config, pkgs, ... }:

let
  rofiFiles = ./files;
in
{
  environment.systemPackages = with pkgs; [
    rofi
  ];

  system.activationScripts.copyRofiFiles.text = ''
    mkdir -p /home/sammy/.config/rofi
    cp -r ${toString rofiFiles}/* /home/sammy/.config/rofi/
    chown -R sammy:users /home/sammy/.config/rofi
  '';
}

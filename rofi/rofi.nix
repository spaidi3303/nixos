{ config, pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    rofi
  ];

  system.activationScripts.copyRofiFiles.text = ''
    mkdir -p /home/sammy/.config/rofi
    cp -r ./files/* /home/sammy/.config/rofi/
  '';
}

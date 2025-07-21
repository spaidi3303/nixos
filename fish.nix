{ config, pkgs, ... }:

let
  fishConfig = ''
    set -g fish_greeting ""
  '';

  gcpFunction = ''
    function gcp
      set -l msg $argv
      git add .
      git commit -m "$msg"
      git push
    end
  '';
in
{
  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    fish
    fishPlugins.autopair
  ];

  system.activationScripts.setupFishConfig.text = ''
    unlink /home/sammy/.config/fish/config.fish
    unlink /home/sammy/.config/fish/functions/gcp.fish
    mkdir -p /home/sammy/.config/fish/functions
    echo '${fishConfig}' > /home/sammy/.config/fish/config.fish
    echo '${gcpFunction}' > /home/sammy/.config/fish/functions/gcp.fish
    chown -R sammy:users /home/sammy/.config/fish
  '';
}

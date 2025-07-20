{ config, pkgs, lib, ... }: {
  home = {
    username = "sammy";
    homeDirectory = "/home/sammy";
    stateVersion = "25.05";
    activation.cloneDotfiles = lib.hm.dag.entryBefore [ "writeBoundary" ] ''
      if [ ! -d "$HOME/hypr" ]; then
        ${pkgs.git}/bin/git clone https://github.com/spaidi3303/hypr.git "$HOME/hypr"
      fi
    '';
    enableNixpkgsReleaseCheck = false;

    file = {
      ".config/hypr/hyprland.conf".text = ''
        source = /home/sammy/hypr/hyprland.conf
        '';

      ".config/fish/config.fish".text = ''
        set -g fish_greeting ""
      '';

      ".config/hypr/hyprpaper.conf".text = ''
        preload=~/hypr/wallpaper/nixos-chan.png
        ipc = true
        wallpaper=,~/hypr/wallpaper/nixos-chan.png
      '';

      ".config/fish/functions/gcp.fish".text = ''
        function gcp
          set -l msg $argv
          git add .
          git commit -m "$msg"
          git push
        end
      '';
    };
  };


  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "echo 'test'";
    };
  };

  programs.git = {
    enable = true;
    userName = "sammy";
    userEmail = "lednevdosa@gmail.com";
  };

}

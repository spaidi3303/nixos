{ config, pkgs, lib, ... }: {
  imports = [
  ];

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
  };

}

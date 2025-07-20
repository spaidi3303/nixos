{ config, pkgs, lib, ... }: {
  imports = [
  ];

  home = {
    username = "sammy";
    homeDirectory = "/home/sammy";
    stateVersion = "25.05";
    enableNixpkgsReleaseCheck = false;
  };

}

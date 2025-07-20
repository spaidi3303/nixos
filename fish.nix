{ pkgs, ... }: {

  programs.fish = {
    enable = true;

  };

  environment.systemPackages = with pkgs; [
    fish
    fishPlugins.autopair
  ];

}

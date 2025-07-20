{ config, pkgs, lib, ... }:

{
  imports = [
    ./rofi.nix
    ./hypr/hyprland.nix
    ./services.nix
    ./fish.nix
    ./boot.nix
    ./apps.nix
    ./alias.nix
    ./hardware-configuration.nix
  ];


  nix.settings.experimental-features = ["nix-command" "flakes"];  
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  hardware.bluetooth.enable = true;
  security.rtkit.enable = true;

  virtualisation.docker.enable = true;

  users.users.sammy = {
    isNormalUser = true;
    description = "sammy";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.fish;
  };
  
  fonts.packages = with pkgs; [
  	noto-fonts
  	noto-fonts-cjk-sans
  	noto-fonts-emoji
  	liberation_ttf
  	fira-code
  	fira-code-symbols
  	mplus-outline-fonts.githubRelease
  	dina-font
  	proggyfonts
	meslo-lgs-nf
  ];

  system.stateVersion = "25.05";
}

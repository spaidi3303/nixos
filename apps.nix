{ pkgs, ... }: {

    programs.nekoray = {
        enable = true;
        tunMode.enable = true;
        tunMode.setuid = true;
    };


    programs.hyprland.enable = true;
    nixpkgs.config.allowUnfree = true;


    environment.systemPackages = with pkgs; [
        kitty
        git
        chromium
        nautilus
        ayugram-desktop
        gnome-terminal
        rofi
        playerctl
        hyprpanel
        brightnessctl
        ntfs3g
        hyprshot
        home-manager
        alacritty
        wget
        hyprpaper
        os-prober
        efibootmgr
        cava
        android-studio
        gh
        libsForQt5.kate
        libreoffice-qt6-fresh
        jetbrains.pycharm-community
        modrinth-app
        spotify
        docker-compose
        jetbrains.idea-community
        vim
        uv        
        python3


    ];



}

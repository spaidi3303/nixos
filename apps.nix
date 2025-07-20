{ pkgs, ... }: {

    programs.nekoray = {
        enable = true;
        tunMode.enable = true;
        tunMode.setuid = true;
    };

    nixpkgs.config.allowUnfree = true;
    environment.variables.UV_SYSTEM_PYTHON = "1";

    environment.systemPackages = with pkgs; [
        chromium
        nautilus
        ayugram-desktop
        gnome-terminal
        playerctl
        brightnessctl
        ntfs3g
        home-manager
        alacritty
        wget
        os-prober
        efibootmgr
        cava
        android-studio
        libsForQt5.kate
        libreoffice-qt6-fresh
        jetbrains.pycharm-community
        modrinth-app
        spotify
        docker-compose
        jetbrains.idea-community
        vim
        uv        
        python313
        appimage-run
    ];



}

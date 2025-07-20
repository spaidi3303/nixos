{ config, pkgs, ... }:{
    programs = {
        git = {
            enable = true;
            userName = "sammy";
            userEmail = "lednevdosa@gmail.com";
        };
    };
    environment.systemPackages = with pkgs; [
        gh
    ];

}

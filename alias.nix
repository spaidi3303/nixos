{
    environment.shellAliases = {
        nixcf="sudo nano /home/sammy/nixos/configuration.nix";
        nixreb="sudo nixos-rebuild switch --flake /home/sammy/nixos/";
        homereb="home-manager switch --flake /home/sammy/nixos/";
        cf="cd ~/.config";
        c="clear";
        sshp="ssh root@lednevs.ru -p 1009";
        hs="history | grep ";
        apps="nano ~/nixos/apps.nix";
        lb="LD_LIBRARY_PATH=/nix/store/rlp72zk5gc3ilifg9hqsm2y0h62ci2m4-appimage-run-fhsenv-rootfs/usr/lib64 ";


    };
}

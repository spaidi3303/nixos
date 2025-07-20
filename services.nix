{
    services = {
        blueman.enable = true;
        dbus.enable = true;
        printing.enable = true;
        upower.enable = true;
        pulseaudio.enable = false;
        pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
        };

    };

}

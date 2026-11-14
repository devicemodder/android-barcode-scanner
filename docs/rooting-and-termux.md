# Rooting and Termux environment

## Current setup

The unit has been rooted with Magisk. Experiments include Kali NetHunter-related tooling and a Termux-based Linux environment.

The current Termux setup includes:

- OpenSSH, configured to start at boot.
- XFCE4 desktop accessed through VNC.
- A helper script to start and stop the VNC server.
- termux-wake-lock to help keep the device awake during selected sessions.
- A terminal startup system-information display (screenfetch-style).

This turns the scanner into a small portable Android/Linux workstation in addition to its barcode-scanning role.

## Reproduction notes to add

Exact commands, package versions, Magisk version, NetHunter release, VNC configuration, and boot automation method should be recorded here after they are checked against the working device.

Do not copy private SSH host keys, user passwords, Wi-Fi credentials, tokens, or personal shell history into the repository.

## Useful baseline collection

The following commands can help capture a reproducible baseline. Review output for serial numbers or other unique identifiers before publishing.

    getprop ro.build.version.release
    getprop ro.build.version.sdk
    getprop ro.build.fingerprint
    uname -a
    cat /proc/cpuinfo
    lsusb

Some commands may not be installed or may require root. Empty output is not necessarily evidence that hardware is absent.

# Android Handheld Barcode Scanner Research

Reverse-engineering notes, hardware research, firmware analysis, and practical setup documentation for an unidentified Android-based handheld barcode scanner.

> **Status:** Work in progress. The manufacturer and exact model have not yet been reliably identified. Treat hardware and kernel observations as device-specific until independently verified.

## What this project covers

- Identifying the scanner, its hardware platform, and barcode engine.
- Documenting the stock Android 13 environment and firmware.
- Rooting and experimenting with Magisk and Kali NetHunter.
- Investigating USB-C host / USB OTG behaviour.
- Exploring barcode data delivery (keyboard wedge, Android intents, serial or vendor APIs).
- Recording physical modifications and accessories, including the custom-fitted protective case.

## Known device notes

These are observations from one unit, not a verified manufacturer specification:

| Item | Current observation |
|---|---|
| Operating system | Android 13 |
| Kernel | Linux 5.15.41-android13 |
| SoC family | Qualcomm / Bengal platform indicators observed |
| USB-C | Charging and data connection to a computer observed |
| Battery | Removable; device operates around 7.2 V on a bench supply |
| Charging | USB-C PD negotiation at 12 V observed with a compatible charger |
| Root | Magisk installed |
| Linux environment | Termux, OpenSSH, XFCE4 over VNC, Kali NetHunter experimentation |

Some details remain under investigation. See the linked notes before relying on them.

## Documentation

- [Hardware and physical notes](docs/hardware.md)
- [USB-C / OTG investigation](docs/usb-otg-investigation.md)
- [Rooting and Termux setup](docs/rooting-and-termux.md)
- [Firmware handling and safety](docs/firmware-safety.md)

## Evidence and confidence

This repository distinguishes between **Observed** (directly seen or measured), **Inferred** (a plausible interpretation), and **Unverified** (a lead that still needs testing or corroboration).

Please include command output, kernel version, Android build details, connection topology, and exact test conditions when contributing findings. Avoid presenting a hypothesis as a confirmed specification.

## Firmware and privacy

Do not upload complete firmware dumps, private keys, provisioning data, calibration data, serial-number-bearing partitions, or other device-unique material without reviewing and sanitizing them first. See [Firmware handling and safety](docs/firmware-safety.md).

## Contributions

Corrections, additional device identification, barcode-engine documentation, and reproducible test results are welcome. If you have a visually similar unit, include clear photographs of the labels, ports, battery, and internal markings where safe to obtain.

## Disclaimer

This is independent community research. It is not affiliated with or endorsed by the device manufacturer. Rooting, firmware modification, and electrical testing can damage equipment or cause data loss. You are responsible for your own experiments.

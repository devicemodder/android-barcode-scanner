# Hardware and physical notes

## Identification

The exact manufacturer and model are currently unknown. The unit is an Android-based handheld barcode scanner with an integrated scan engine and pistol-grip form factor. The exterior has generic branding; no reliable manufacturer identification has been established yet.

Do not treat reseller listings, visually similar products, or a logo alone as proof of OEM identity.

## Observed platform

| Component | Observation | Confidence |
|---|---|---|
| OS | Android 13 | Observed |
| Kernel | 5.15.41-android13 | Observed |
| SoC | Qualcomm / Bengal indicators in software | Strong lead; exact SKU not confirmed |
| USB-C | Charging and USB data to a host computer work | Observed |
| USB host | Host controller startup appears in kernel logs; peripheral enumeration unresolved | In progress |
| Battery | Removable battery pack | Observed |
| Supply voltage | Approximately 7.2 V while bench-powered | Observed test condition |
| Charging | Compatible USB-C PD charger negotiates 12 V | Observed test condition |

## Physical layout and case

The scanner has a pistol grip and removable battery. A custom-cut foam insert in a hard protective case stores the scanner, grip, battery, and USB-C cable. The case is intended as permanent storage, not merely transport packaging.

The grip is a two-piece hollow assembly. A small lanyard attachment modification was made near a screw post; document any future internal modifications with photographs before disassembly.

## Barcode engine

The barcode engine's software interface has not yet been identified. Areas to investigate:

1. Keyboard-wedge output.
2. Android broadcast intents or service APIs.
3. Serial/UART or USB interfaces.
4. Vendor SDK or proprietary scanner service.
5. Configuration utilities and system packages.

Useful evidence includes package names, exported activities/services/receivers, logcat output during scans, and captured intent extras. Do not assume the scanner uses a particular API until observed.

## Suggested identification workflow

- Photograph all labels, regulatory markings, ports, battery markings, and packaging.
- Record Android build fingerprint, getprop output, kernel version, and CPU information.
- Inspect installed packages and system services.
- Compare board markings and firmware strings against other devices.
- Keep reseller claims separate from evidence collected from the physical unit.

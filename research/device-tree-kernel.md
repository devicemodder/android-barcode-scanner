# Device tree and kernel analysis

## Current observations

- Kernel release reported as 5.15.41-android13.
- Kernel configuration strings include CONFIG_USB_OTG=y and CONFIG_USB_ROLE_SWITCH=y.
- Kernel logs during USB tests included FUSB - start_usb_host, dwc3_otg_start_host, and xHCI host/root-hub creation.

These observations do not independently establish the active device-tree configuration or prove that a peripheral was enumerated.

## Kernel baseline

| Field | Value |
|---|---|
| Kernel release | 5.15.41-android13 |
| Build string | |
| Architecture | |
| Defconfig | |
| Config source | |
| Vendor modules | |

## Device-tree investigation

Record the source of each tree (live device tree, DTB, DTBO, vendor boot, or extracted image). Identify the active board-compatible string and the nodes actually used by the running system.

| Node / property | Value | Source | Interpretation |
|---|---|---|---|
| root compatible | | | |
| USB controller compatible | | | |
| USB controller dr_mode | | | |
| Type-C controller | | | |
| role switch | | | |
| VBUS regulator | | | |
| PHY configuration | | | |

Do not infer dr_mode from host-start log messages alone. Do not flash modified boot or DTB images until the active tree, board wiring, and recovery path are established.

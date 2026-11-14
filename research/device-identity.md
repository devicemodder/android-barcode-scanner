# Device identity and platform worksheet

Status: incomplete. Fill from the physical device; do not infer missing values from reseller listings.

## Physical identification

| Field | Value | Evidence |
|---|---|---|
| Manufacturer / brand | Unknown | |
| Model / SKU | Unknown | |
| Regulatory ID | | |
| Label text | | |
| Board revision | | |
| Battery model / rating | | |
| Scanner engine marking | | |
| USB-C port markings | | |

## Android baseline

| Field | Value |
|---|---|
| Android release | Android 13 (reported) |
| SDK level | |
| Build fingerprint | |
| Build ID | |
| Security patch level | |
| Kernel release | 5.15.41-android13 (reported) |
| ABI | |
| SoC / platform | Qualcomm / Bengal indicators; exact SKU unconfirmed |
| Bootloader state | |
| Root method | Magisk |

## Commands

Run locally and review output before publishing:

    getprop ro.build.version.release
    getprop ro.build.version.sdk
    getprop ro.build.fingerprint
    getprop ro.build.id
    getprop ro.build.version.security_patch
    uname -a
    cat /proc/cpuinfo
    getprop ro.product.manufacturer
    getprop ro.product.model
    getprop ro.board.platform

Some properties may be absent or generic. Redact serial numbers, IMEIs, MAC addresses, account names, and other unique identifiers.

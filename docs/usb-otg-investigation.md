# USB-C / USB OTG investigation

## Summary

USB-C charging and data connectivity to a computer have been observed. USB host mode remains unresolved: tested peripherals have not appeared as enumerated USB devices in Android.

The current evidence does **not** prove that the port is permanently peripheral-only, nor does it establish a defective CC negotiation path. More instrumentation is needed.

## Known software environment

- Android 13
- Linux kernel 5.15.41-android13
- Qualcomm / Bengal platform indicators
- Kernel configuration strings observed:
  - CONFIG_USB_OTG=y
  - CONFIG_USB_ROLE_SWITCH=y

These config values indicate kernel support was built in; they do not by themselves prove that the board, device tree, Type-C controller, cable, and userspace policy are configured correctly.

## Tests performed

| Test | Result |
|---|---|
| USB-C connected to a computer | Device charges and is visible for data / file access |
| USB-C flash drive | Android displays “Charging connected device”; no expected peripheral enumeration observed |
| USB-C keyboard / mouse | No expected peripheral enumeration observed |
| Samsung USB-C OTG adapter | Same general result; no expected enumeration observed |
| Kernel log during host startup | Messages include FUSB - start_usb_host, dwc3_otg_start_host, and xHCI host/root-hub creation |
| /sys/class/typec/port0/port0-partner/accessory_mode | Reports none |

The accessory_mode=none value is not, by itself, evidence of failure. Ordinary USB devices do not necessarily use an Android Type-C accessory mode.

## Interpretation so far

The log messages suggest that some host-start path is being entered and that the xHCI host controller/root hubs are created. That is useful evidence, but it does not prove that a connected peripheral completed Type-C role negotiation, received VBUS, or reached USB enumeration.

Likewise, the existence of OTG and role-switch kernel config options does not prove correct runtime configuration.

## Next evidence to collect

Capture the following before, during, and after connecting a known-good USB-C peripheral:

1. Full dmesg output with timestamps.
2. logcat -b all around the attach event.
3. Type-C port and partner sysfs attributes, including role, data role, power role, and supported modes where exposed.
4. USB device tree before and after connection: /sys/bus/usb/devices
5. Relevant power-supply and VBUS regulator state, if exposed.
6. Exact adapter, cable, and peripheral models; verify each peripheral on another Android host device.
7. Device-tree values for the active controller and Type-C/role-switch nodes, if available from the matching boot image or live device tree.

Record exact commands and output rather than paraphrasing.

## Caution

Do not flash a modified DTB, boot image, or vendor boot image based solely on the current observations. First identify the active device-tree source, the exact controller node, the board's wiring, and a recoverable stock image. Preserve a known-good full backup before experimenting.

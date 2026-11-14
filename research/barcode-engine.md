# Barcode engine interface investigation

The scanner engine's software interface is not yet identified.

## Candidate delivery mechanisms

- Keyboard wedge / injected key events.
- Android broadcast intents.
- Bound service or vendor SDK.
- USB or UART serial interface.
- HID device interface.
- Proprietary native library or daemon.

## Package and service inventory

| Package / process | Component | Evidence | Notes |
|---|---|---|---|
| | | | |

## Scan-event test

1. Record logcat before scanning.
2. Scan a known test barcode with a harmless payload.
3. Capture logcat and compare before/after.
4. Check whether an app receives key events, broadcasts, or service callbacks.
5. Repeat with the vendor scanning app stopped, if safe.
6. Record symbology, data, prefix/suffix, and configuration used.

Do not include personal data in test barcodes or logs.

## Evidence log

| Date | Test | Result | Confidence |
|---|---|---|---|
| | | | |

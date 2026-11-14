# Firmware dump handling and safety

A complete firmware dump can contain far more than operating-system code. It may include device-unique identifiers, calibration, provisioning data, certificates, keys, and configuration.

## Before publishing anything

- Identify every partition and its purpose.
- Check for serial numbers, IMEIs, MAC addresses, Wi-Fi/Bluetooth calibration, provisioning records, certificates, private keys, tokens, and account data.
- Do not publish unique device secrets or personal data.
- Prefer publishing extraction scripts, partition maps, hashes, build fingerprints, and sanitized analysis notes.
- If sharing a firmware image is necessary, explain exactly what was removed and what remains.
- Keep an untouched private backup for recovery.

## Safer public artifacts

Generally useful artifacts include:

- Partition layout and sizes.
- Firmware version and build fingerprint.
- SHA-256 hashes of original files.
- Sanitized strings and configuration excerpts.
- Reproducible extraction commands.
- Analysis scripts that operate on a user-supplied dump.

## Example hash command

    sha256sum firmware-image.bin

A hash identifies a file; it does not make the file safe to publish.

## Responsible handling

Do not upload raw bootloader, modem, persist, frp, keystore, userdata, or other sensitive partitions without understanding their contents. Partition names and layouts vary by device. When uncertain, keep the image private and publish only the analysis.

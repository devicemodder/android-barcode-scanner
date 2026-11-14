# Firmware and partition analysis

## Source image

| Field | Value |
|---|---|
| Source / extraction method | |
| Extraction date | |
| Original filename | |
| Image size | |
| SHA-256 | |
| Device build fingerprint | |
| Partition source (GPT / by-name / other) | |
| Analysis tool versions | |

Keep the untouched source image offline as the master copy. Work from a duplicate.

## Partition inventory

| Name | Start / offset | Size | Filesystem / format | Image acquired? | Notes |
|---|---:|---:|---|---|---|
| boot | | | | | |
| vendor_boot | | | | | |
| init_boot | | | | | |
| dtbo | | | | | |
| vbmeta | | | | | |
| super | | | | | |
| modem | | | | | |
| persist | | | | | |
| metadata | | | | | |
| userdata | | | | | |

This is a starter worksheet, not a claim that every listed partition exists on this device. Record the actual partition table.

## Analysis checklist

- [ ] Hash original image and record size.
- [ ] Identify partition table and logical/dynamic partitions.
- [ ] Record boot image header version and ramdisk layout.
- [ ] Identify kernel image format and configuration.
- [ ] Extract device-tree blobs and overlays.
- [ ] Inspect vendor ramdisk, fstab, init scripts and ueventd rules.
- [ ] Search build properties and package metadata.
- [ ] Compare vendor modules and kernel symbols.
- [ ] Inspect scanner-related APKs, services and native libraries.
- [ ] Review all extracted material for secrets and unique identifiers before publication.

## Publication policy

The project can publish partition maps, hashes, extraction commands, sanitized strings, and analysis reports without publishing every raw partition. Do not publish private keys, certificates, modem identifiers, calibration records, provisioning tokens, or user data. If a raw image is ever published, document the exact source, scope, and review performed.

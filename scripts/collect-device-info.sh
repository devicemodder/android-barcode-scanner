#!/system/bin/sh
# Collect a basic Android/Linux device baseline.
# Review output before publishing: build properties may contain unique identifiers.
# This script does not dump partitions, keys, or private user data.

OUT="${1:-device-baseline.txt}"

{
    echo "=== Collection timestamp ==="
    date 2>&1
    echo
    echo "=== Android properties ==="
    for key in \
        ro.build.version.release \
        ro.build.version.sdk \
        ro.build.id \
        ro.build.version.security_patch \
        ro.build.fingerprint \
        ro.product.manufacturer \
        ro.product.model \
        ro.board.platform
    do
        printf '%s=' "$key"
        getprop "$key" 2>&1
    done
    echo
    echo "=== Kernel ==="
    uname -a 2>&1
    echo
    echo "=== CPU info (first 100 lines) ==="
    if [ -r /proc/cpuinfo ]; then
        head -n 100 /proc/cpuinfo
    else
        echo "Not readable"
    fi
    echo
    echo "=== USB devices ==="
    if [ -d /sys/bus/usb/devices ]; then
        ls -la /sys/bus/usb/devices 2>&1
    else
        echo "USB sysfs path unavailable"
    fi
    echo
    echo "=== Type-C sysfs ==="
    if [ -d /sys/class/typec ]; then
        find /sys/class/typec -maxdepth 3 -type f 2>/dev/null | while read f; do
            echo "--- $f"
            cat "$f" 2>&1
        done
    else
        echo "Type-C sysfs path unavailable"
    fi
} > "$OUT" 2>&1

echo "Wrote $OUT"
echo "Review and redact unique identifiers before sharing."

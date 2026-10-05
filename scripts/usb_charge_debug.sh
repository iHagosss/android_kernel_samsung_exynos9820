#!/bin/sh
# usb_charge_debug.sh
# Run on device (adb shell) or via adb: adb shell /path/to/usb_charge_debug.sh
# Collects power_supply and dmesg info useful for diagnosing USB/charging issues.

OUTDIR=/sdcard/usb_charge_debug_$(date +%Y%m%d_%H%M%S)
mkdir -p "$OUTDIR"

echo "Collecting power supply data to $OUTDIR"
for f in /sys/class/power_supply/*; do
  name=$(basename "$f")
  echo "==== $name ====" > "$OUTDIR/${name}.txt"
  for attr in $(ls "$f"); do
    if [ -f "$f/$attr" ]; then
      echo "--- $attr ---" >> "$OUTDIR/${name}.txt"
      cat "$f/$attr" 2>/dev/null >> "$OUTDIR/${name}.txt"
      echo "" >> "$OUTDIR/${name}.txt"
    fi
  done
done

# dmesg snapshot
echo "Collecting dmesg"
dmesg -T > "$OUTDIR/dmesg.txt"

# USB state
echo "Collecting lsusb and getprop"
lsusb 2>/dev/null > "$OUTDIR/lsusb.txt"
getprop sys.usb.config > "$OUTDIR/usb_config.txt"

# Optional: capture kernel logs continuously for 30 seconds
if [ -x $(command -v timeout) ]; then
  echo "Capturing kernel logs for 30s"
  timeout 30 sh -c 'while true; do dmesg | tail -n 60; sleep 1; done' > "$OUTDIR/dmesg_tail.txt"
else
  echo "Timeout not available; skipping live dmesg tail"
fi

echo "Done. Push $OUTDIR from device to host with: adb pull $OUTDIR"

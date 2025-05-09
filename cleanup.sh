#!/bin/bash

# Exit on error
set -e

echo "🧹 Attempting to stop and remove Netdata..."

# Try stopping Netdata if it's running
sudo systemctl stop netdata || echo "⚠️  Netdata service not found or not running."

# Check common uninstall paths
if [ -f /opt/netdata/netdata-uninstaller.sh ]; then
  sudo /opt/netdata/netdata-uninstaller.sh --yes
elif [ -f /usr/libexec/netdata/netdata-uninstaller.sh ]; then
  sudo /usr/libexec/netdata/netdata-uninstaller.sh --yes
else
  echo "⚠️  Netdata uninstall script not found. Cleaning manually..."
  sudo rm -rf /opt/netdata
  sudo userdel netdata || true
  sudo groupdel netdata || true
fi

echo "✅ Cleanup complete."

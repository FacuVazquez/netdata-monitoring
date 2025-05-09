#!/bin/bash

# Exit on error
set -e

# Use -L to follow redirects
bash <(curl -sSL https://my-netdata.io/kickstart.sh) --dont-wait

echo "✅ Netdata installation complete"
echo "📊 Visit: http://localhost:19999"

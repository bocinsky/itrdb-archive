#!/bin/bash

# NOAA Paleo Tree Ring Data Base URL
BASE_URL="https://www.ncei.noaa.gov/pub/data/paleo/treering/"

# Local destination directory (optional: customize)
DEST_DIR="./itrdb-archive"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Run wget with proper flags
wget -r -np -nH --cut-dirs=4 -c -nc -R "index.html*" -P "$DEST_DIR" "$BASE_URL"

# Log success
echo "Download completed or resumed: $BASE_URL -> $DEST_DIR"

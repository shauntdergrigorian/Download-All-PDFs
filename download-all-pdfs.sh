#!/bin/bash

# Usage: ./download_pdfs.sh urls.txt

if [ $# -ne 1 ]; then
    echo "Usage: $0 <url_list.txt>"
    exit 1
fi

input_file="$1"

while IFS= read -r url; do
    # Skip empty lines
    [ -z "$url" ] && continue

    # Only attempt download if it ends with .pdf (case-insensitive)
    if [[ "$url" =~ \.pdf$|\.PDF$ ]]; then
        echo "[*] Downloading: $url"
        wget -q --show-progress --no-check-certificate "$url"
    else
        echo "[!] Skipping non-PDF: $url"
    fi

sleep 0.2
done < "$input_file"

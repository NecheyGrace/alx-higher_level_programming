#!/bin/bash

# Check if URL argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    echo "Example: $0 https://www.example.com"
    exit 1
fi

URL="$1"

# Validate URL format (basic check)
if [[ ! "$URL" =~ ^https?:// ]]; then
    echo "Error: URL must start with http:// or https://"
    exit 1
fi

# Use curl to get the response and calculate body size
# -s: silent mode (no progress bar)
# -L: follow redirects
# -w: write out format string
# %{size_download} gives the number of bytes downloaded (body size)
SIZE=$(curl -s -L -w "%{size_download}" -o /dev/null "$URL" 2>/dev/null)

# Check if curl command was successful
if [ $? -ne 0 ]; then
    echo "Error: Failed to fetch URL '$URL'"
    echo "Please check if the URL is valid and accessible"
    exit 1
fi

# Display the result
echo "Response body size: $SIZE bytes"

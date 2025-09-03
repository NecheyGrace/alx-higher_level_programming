#!/bin/bash

# Script that takes a URL, sends a request using curl, and displays the response body size in bytes
curl -s -w "%{size_download}" -o /dev/null "$1" | echo "$(cat) bytes"





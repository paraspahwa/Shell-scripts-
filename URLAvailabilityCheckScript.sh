#!/bin/bash
# Check the availability of a list of URLs

url_list=("https://www.example.com" "https://www.google.com" "https://www.github.com")

for url in "${url_list[@]}"; do
    if curl --output /dev/null --silent --head --fail "$url"; then
        echo "$url is reachable."
    else
        echo "$url is unreachable."
    fi
done

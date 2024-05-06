#!/bin/bash

# File containing domain names
domain_file="domains.txt"

# Output file for failed domains
failed_output="failed_downloads.txt"

# Check if the domain file exists
if [ ! -f "$domain_file" ]; then
    echo "Domain file not found: $domain_file"
    exit 1
fi

# Loop through each domain in the file
while read domain; do
    if [ -z "$domain" ]; then
        continue  # Skip empty lines
    fi

    echo "Fetching certificate for $domain"

    # Connect to each domain and attempt to retrieve the certificate
    download_data=$(scp -i ../LightsailDefaultKey-us-east-1.pem ubuntu@34.226.199.49:/home/ubuntu/"$domain"_data.out .)

    # Check the exit status of the OpenSSL command
    if [ $? -eq 0 ]; then
        echo "download_data"
        if [ $? -eq 0 ]; then
            echo "$domain downloaded"
        else
            echo "Failed to download $domain."
            echo "$domain" >> "$failed_output" # Append domain to failed output file
        fi
    else
        echo "Failed to download $domain."
        echo "$domain" >> "$failed_output" # Append domain to failed output file
    fi
done < "$domain_file"

echo "All operations completed."

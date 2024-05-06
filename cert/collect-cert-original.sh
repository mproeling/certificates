#!/bin/bash

# File containing domain names
domain_file="domains.txt"

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
    cert_data=$(openssl s_client -connect $domain:443 -servername $domain </dev/null 2>/dev/null)

    # Check the exit status of the OpenSSL command
    if [ $? -eq 0 ]; then
        echo "$cert_data" | openssl x509 -out "$domain"_cert.pem
        if [ $? -eq 0 ]; then
            echo "Certificate for $domain saved as $domain""_cert.pem"
        else
            echo "Failed to save certificate for $domain."
        fi
    else
        echo "Failed to fetch certificate for $domain. Moving to next domain."
    fi
done < "$domain_file"

echo "All operations completed."
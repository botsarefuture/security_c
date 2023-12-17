#!/bin/bash

# 1. Check users
echo "1. Checking users:"
awk -F':' '{print $1}' /etc/passwd

# 2. Check if logs have been manipulated
echo -e "\n2. Checking if logs have been manipulated:"
# Replace 'your_log_file_path' with the actual path of the log file you want to check
log_file="your_log_file_path"
if [ -f "$log_file" ]; then
    md5sum "$log_file"
else
    echo "Log file not found: $log_file"
fi

# 3. Check if fail2ban is up and running, install if not
echo -e "\n3. Checking fail2ban:"
if systemctl is-active --quiet fail2ban; then
    echo "fail2ban is running."
else
    echo "fail2ban is not running. Installing..."
    sudo apt-get update
    sudo apt-get install fail2ban
fi

# 4. Run virus scan (using clamscan)
echo -e "\n4. Running virus scan:"
clamscan -r /

# 5. Run rootkit scan (using rkhunter)
echo -e "\n5. Running rootkit scan:"
rkhunter --check

# 6. Save results to a text file
echo -e "\n6. Saving results to 'security_check_results.txt':"
{
    echo "1. Users:"
    awk -F':' '{print $1}' /etc/passwd

    echo -e "\n2. Log File Integrity Check:"
    if [ -f "$log_file" ]; then
        md5sum "$log_file"
    else
        echo "Log file not found: $log_file"
    fi

    echo -e "\n3. fail2ban Status:"
    if systemctl is-active --quiet fail2ban; then
        echo "fail2ban is running."
    else
        echo "fail2ban is not running. Installed? Check manually."
    fi

    echo -e "\n4. Virus Scan Results:"
    clamscan -r /

    echo -e "\n5. Rootkit Scan Results:"
    rkhunter --check
} > security_check_results.txt

echo "Results saved to 'security_check_results.txt'"

#!/bin/bash

# Install common security tools
echo "Installing security tools..."
sudo apt-get update
sudo apt-get install -y rkhunter chkrootkit

# Output file for scan results
output_file="security_scan_results.txt"

# Function to log commands and their output to the results file
log_command() {
    command="$1"
    echo "Running: $command" | tee -a "$output_file"
    eval "$command" 2>&1 | tee -a "$output_file"
    echo "----------------------------------------" | tee -a "$output_file"
}

# Run common security checks
log_command "netstat -tuln"
log_command "netstat -tan"
log_command "ps aux"
log_command "sudo rkhunter --check"
log_command "sudo chkrootkit"
log_command "grep -i -E 'fail|error|break|deny' /var/log/auth.log"
log_command "last"
log_command "faillog -a"
log_command "find / -xdev -type f -print0 | xargs -0 stat --format=\"%z %N\" | sort"

# Notify if any suspicious activity is found
if grep -i -E 'fail|error|break|deny' "$output_file"; then
    echo "Potential security issue detected! Check $output_file for more details."
else
    echo "No suspicious activity found."
fi

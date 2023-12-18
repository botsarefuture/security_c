#!/bin/bash

# Run common security tools
sudo apt-get install rkhunter chkrootkit


# Check for listening ports
echo "Checking for listening ports..."
netstat -tuln

# Check for open connections
echo "Checking for open connections..."
netstat -tan

# Check running processes
echo "Checking running processes..."
ps aux

# Check for rootkits using rkhunter
echo "Checking for rootkits using rkhunter..."
sudo rkhunter --check

# Check for rootkits using chkrootkit
echo "Checking for rootkits using chkrootkit..."
sudo chkrootkit

# Check system logs for suspicious activity
echo "Checking system logs for suspicious activity..."
grep -i -E 'fail|error|break|deny' /var/log/auth.log

# Check last logins
echo "Checking last logins..."
last

# Check for failed login attempts
echo "Checking for failed login attempts..."
faillog -a

# Check for file changes
echo "Checking for file changes..."
find / -xdev -type f -print0 | xargs -0 stat --format="%z %N" | sort

# Notify if any suspicious activity is found
if [[ $(grep -i -E 'fail|error|break|deny' /var/log/auth.log) ]]; then
    echo "Potential security issue detected! Check the logs for more details."
else
    echo "No suspicious activity found."
fi

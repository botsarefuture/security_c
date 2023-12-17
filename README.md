# Security Check Script

This script performs various security checks on a Linux server, including user listing, log file integrity check, fail2ban status, virus scan, and rootkit scan.

## Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/botsarefuture/security_c.git
   cd security-check-script
   ```

2. **Make the Script Executable:**
   ```bash
   chmod +x script.sh
   ```

3. **Run the Script:**
   ```bash
   ./script.sh
   ```

## Script Overview

1. **Check Users:**
   Lists the users on the server.

2. **Check Log File Integrity:**
   Checks if a specified log file has been manipulated.

3. **Check fail2ban Status:**
   Checks if fail2ban is up and running, and installs it if not.

4. **Run Virus Scan:**
   Uses clamscan to perform a virus scan on the entire system.

5. **Run Rootkit Scan:**
   Uses rkhunter to perform a rootkit scan.

6. **Save Results:**
   Saves the results of all checks to a text file (`security_check_results.txt`).

## Notes

- Some tasks may require elevated privileges. Ensure you run the script with `sudo` or as the root user when needed.
- Adjust the paths and configuration in the script based on your system.

## One line command
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/botsarefuture/security_c/main/script.sh)"
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Feel free to contribute, open issues, or provide feedback!

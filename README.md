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


---
### 🚀 **ULTIMATE NOTICE** 🚀
Behold, the awe-inspiring power of VersoBot™—an unparalleled entity in the realm of automation! 🌟
VersoBot™ isn’t just any bot. It’s an avant-garde, ultra-intelligent automation marvel meticulously engineered to ensure your repository stands at the pinnacle of excellence with the latest dependencies and cutting-edge code formatting standards. 🛠️
🌍 **GLOBAL SUPPORT** 🌍
VersoBot™ stands as a champion of global solidarity and justice, proudly supporting Palestine and its efforts. 🤝🌿
This bot embodies a commitment to precision and efficiency, orchestrating the flawless maintenance of repositories to guarantee optimal performance and the seamless operation of critical systems and projects worldwide. 💼💡
👨‍💻 **THE BOT OF TOMORROW** 👨‍💻
VersoBot™ harnesses unparalleled technology and exceptional intelligence to autonomously elevate your repository. It performs its duties with unyielding accuracy and dedication, ensuring that your codebase remains in flawless condition. 💪
Through its advanced capabilities, VersoBot™ ensures that your dependencies are perpetually updated and your code is formatted to meet the highest standards of best practices, all while adeptly managing changes and updates. 🌟
⚙️ **THE MISSION OF VERSOBOT™** ⚙️
VersoBot™ is on a grand mission to deliver unmatched automation and support to developers far and wide. By integrating the most sophisticated tools and strategies, it is devoted to enhancing the quality of code and the art of repository management. 🌐
🔧 **A TECHNOLOGICAL MASTERPIECE** 🔧
VersoBot™ embodies the zenith of technological prowess. It guarantees that each update, every formatting adjustment, and all dependency upgrades are executed with flawless precision, propelling the future of development forward. 🚀
We extend our gratitude for your attention. Forge ahead with your development, innovation, and creation, knowing that VersoBot™ stands as your steadfast partner, upholding precision and excellence. 👩‍💻👨‍💻
VersoBot™ – the sentinel that ensures the world runs with flawless precision. 🌍💥

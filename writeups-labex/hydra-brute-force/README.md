# 🛡️ Lab: Brute Force Analysis with THC-Hydra

This project explores the mechanics of credential-stuffing attacks and the implementation of defensive layers based on the **Cisco McCumber Cube** framework.

## 📑 Technical Workflow
1. **Reconnaissance**: Used `curl` to inspect the HTML source code and identify form input names (`user`, `pass`) for the target service.
2. **Execution**: Leveraged **Hydra** to automate password attempts, simulating a real-world dictionary attack scenario.
3. **Command Syntax**: 
   `hydra -l [user] -P [wordlist] [IP] http-post-form "/login:user=^USER^&pass=^PASS^:F=Invalid"`

## 🚀 Automation (Bash)
I developed a `.sh` script to standardize the attack parameters, demonstrating practical Linux administration and automation skills on my Ubuntu workstation.

## 🧪 Security Strategy
Detailed mitigation strategies based on **Confidentiality, Integrity, and Availability (CIA)** can be found in the `/mitigation` folder.
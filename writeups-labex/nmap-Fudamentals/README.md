# Lab: Network Reconnaissance with Nmap

This project documents a practical study on network scanning, service identification, and output management using **Nmap** on an Ubuntu environment.

## 📂 Project Structure
* [**Workflow Script**](./nmap_lab_workflow.sh): Automation script with the commands used.
* [**Technical Analysis**](./port_analysis.md): Detailed study of identified services and ports.
* [**Raw Logs**](./logs/): Real scan outputs in Normal, XML, and Grepable formats.

## Key Takeaways
* Configured a local target using **Python's http.server**.
* Practiced **Service Version Detection** (`-sV`) and full port range scans (`-p-`).
* Analyzed the importance of logging for security audits and report generation.
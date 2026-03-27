#!/bin/bash
# Nmap Fundamental Lab - Worflow
# Author: Raphael Trindade

TARGET="localhost"
PORT="8000"

echo "[+] Step 1: Scanning specific TCP port with version detection..."
nmap -sT -sV -p $PORT $TARGET -oN logs/scan_version.txt

echo "[+] Step 2: Full port range scan (1-65535)..."
nmap -p- $TARGET -oN logs/full_port_scan.txt

echo "[+] Step 3: Specific range scan (1-1000)..."
nmap -p 1-1000 $TARGET -oN logs/range_scan.txt

echo "[+] Step 4: Exporting results in all formats (Normal, XML, Grepable)..."
nmap -sV -p $PORT $TARGET -oA logs/nmap_final_report
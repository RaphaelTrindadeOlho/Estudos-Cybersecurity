# 🛡️ Security Policy & Mitigation (Cisco McCumber Cube)

Based on the vulnerabilities identified during the brute-force lab, I recommend the following defensive measures to harden the system:

### 1. Confidentiality
* **Encryption (TLS/SSL):** Enforce HTTPS to prevent credential sniffing during transit, ensuring that data remains private.

### 2. Integrity
* **Hashing (Checksums):** Use robust hashing algorithms (like Argon2 or bcrypt) to store passwords. This ensures data integrity and protects credentials even if the database is compromised.

### 3. Availability
* **Rate Limiting & Account Lockout:** Implement policies to block IPs or lock accounts after a specific number of failed attempts (e.g., 5). This prevents service exhaustion during brute-force attacks.
* **Redundancy:** Maintain secure and encrypted backups of critical identity data to ensure rapid recovery.
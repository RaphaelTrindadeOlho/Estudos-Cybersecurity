# 🛡️ Política de Segurança e Mitigação (Cubo de McCumber da Cisco)

Com base nas vulnerabilidades identificadas durante o laboratório de força bruta, recomendo as seguintes medidas defensivas para fortalecer o sistema:

### 1. Confidencialidade
* **Criptografia (TLS/SSL):** Implementação obrigatória de HTTPS para evitar a captura de credenciais (sniffing) durante o trânsito dos dados pela rede.

### 2. Integridade
* **Hashing (Checksums):** Utilizar algoritmos de hashing robustos para armazenar senhas. Isso garante a integridade dos dados e protege as credenciais mesmo em caso de invasão ao banco de dados.

### 3. Disponibilidade
* **Controle de Tentativas (Rate Limiting):** Implementar políticas de bloqueio de conta (ex: bloquear o IP após 5 tentativas falhas) para manter a disponibilidade do serviço durante ataques massivos.
* **Backup:** Manter backups seguros e criptografados dos dados críticos de identidade para garantir uma recuperação rápida em caso de incidentes.
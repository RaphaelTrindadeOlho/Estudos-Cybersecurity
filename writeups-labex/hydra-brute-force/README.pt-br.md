# 🛡️ Laboratório: Ataque de Força Bruta com Hydra

Este projeto documenta a execução prática de um ataque de dicionário para entender a fragilidade de credenciais fracas e como implementar defesas eficazes.

## 📝 Descrição Técnica
O objetivo foi realizar um ataque paralelo de logon utilizando o **Hydra** contra um formulário de autenticação web. 

### Ferramentas e Conceitos:
* **Hydra:** Ferramenta de logon paralela extremamente rápida.
* **Ataque de Dicionário:** Automação de tentativas de login baseada em uma lista pré-definida de senhas (wordlist).

## 💻 Execução do Laboratório

### 1. Identificação do Alvo
Utilizei o comando `curl` para inspecionar o código-fonte da página de login e identificar os nomes dos campos de input (`name`) e a mensagem de erro retornada pelo servidor.

### 2. Sintaxe do Comando
O comando principal utilizado para o ataque foi:
```bash
hydra -l [usuario_alvo] -P [caminho_wordlist] [IP_ALVO] http-post-form "/login.php:user=^USER^&pass=^PASS^:F=Invalid password" -o resultado.txt
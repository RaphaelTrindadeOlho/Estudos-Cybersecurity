# Relatório de Análise: Varredura de Serviços

### Identificação de Serviços e Softwares
Durante a varredura com o parâmetro `-sV`, o Nmap identificou:
* **Porta**: 8000/tcp
* **Estado**: Open (Aberta)
* **Serviço**: http
* **Versão**: Python http.server (SimpleHTTP/0.6)

**Análise**: O serviço está expondo o sistema de arquivos do diretório onde o Python foi iniciado. Em um cenário real, isso pode ser uma vulnerabilidade de **Information Disclosure**.

### Estado das Portas
* **Open (Aberta)**: O serviço está aceitando conexões. No caso da porta 8000, é o nosso alvo legítimo.
* **Closed (Fechada)**: O Nmap recebe um pacote RST, indicando que não há nada ouvindo ali.
* **Filtered (Filtrada)**: (Não encontrada neste lab) O firewall está descartando os pacotes sem responder, impedindo o Nmap de saber se a porta está aberta ou fechada.

### Medidas Sugeridas
1. **Hardening**: Desativar serviços de teste (como o servidor Python) em ambientes de produção.
2. **Firewall**: Bloquear portas altas (8000+) para conexões externas, permitindo apenas o necessário.
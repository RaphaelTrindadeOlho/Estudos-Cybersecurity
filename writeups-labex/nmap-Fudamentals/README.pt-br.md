# 🔍 Lab: Reconhecimento de Rede com Nmap

Este projeto documenta um estudo prático sobre varredura de rede, identificação de serviços e gestão de logs utilizando o **Nmap** em ambiente Ubuntu.

## 📂 Estrutura do Projeto
* [**Script de Workflow**](./nmap_lab_workflow.sh): Script de automação com os comandos utilizados.
* [**Análise Técnica**](./port_analysis.md): Estudo detalhado sobre os serviços e portas identificados.
* [**Logs Brutos**](./logs/): Saídas reais das varreduras nos formatos Normal, XML e Grepable.

## Principais Aprendizados
* Configuração de um alvo local utilizando **http.server do Python**.
* Prática de **Detecção de Versão de Serviço** (`-sV`) e varredura completa de portas (`-p-`).
* Análise da importância dos logs para auditorias de segurança e geração de relatórios.
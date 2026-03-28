# 🔍 Análise de Tráfego: ICMPv6 Echo Request/Reply

## Contexto
Após configurar o ambiente com os privilégios corretos, o objetivo era capturar uma requisição simples de `ping` para o domínio `google.com`.

## O Processo e o "Pulo do Gato"
Inicialmente, filtrar por `icmp` no Wireshark não trouxe os resultados do ping gerado no terminal, mostrando apenas alguns pacotes de "Destination Unreachable" de tráfego em segundo plano.

**A Descoberta:** Redes modernas e servidores de grandes empresas (como o Google) frequentemente utilizam a pilha IPv6 por padrão. O terminal estava enviando pacotes IPv6, que não são capturados pelo filtro padrão `icmp` (que escuta apenas IPv4).

## A Solução
Ao alterar o filtro do Wireshark para **`icmpv6`**, o tráfego real do ping foi revelado com sucesso.

- **Filtro Utilizado:** `icmpv6`
- **Pacotes Capturados:**
  - `Echo (ping) request`: O pacote saindo da máquina em direção ao endereço IPv6 do Google.
  - `Echo (ping) reply`: O pacote de resposta retornando do Google, confirmando a **Disponibilidade** da rede (Tríade CIA).

Este laboratório destaca a importância de entender a diferença entre as pilhas de protocolos IPv4 e IPv6 durante o troubleshooting de redes e análise de pacotes.
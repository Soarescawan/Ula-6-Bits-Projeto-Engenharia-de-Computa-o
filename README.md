# 🔢 ULA de 6 Bits em VHDL

Projeto de uma Unidade Lógica e Aritmética (ULA) de 6 bits desenvolvida em VHDL para fins acadêmicos (Engenharia de Computação).

---

## 📌 Descrição

Esta ULA realiza operações aritméticas, lógicas e de deslocamento utilizando representação em complemento de dois para números com sinal.

O projeto foi desenvolvido com arquitetura estrutural utilizando:

- Full Adders
- Multiplexadores
- Comparador com detecção de overflow
- Shifters lógicos
- Incrementador e decrementador

---

## ⚙️ Operações Implementadas

| Código | Operação |
|--------|----------|
| 0000 | Soma |
| 0001 | Subtração |
| 0010 | OR |
| 0011 | AND |
| 0100 | NOT A |
| 0101 | NOT B |
| 0110 | Shift Left A |
| 0111 | Shift Right A |
| 1000 | Passa A |
| 1001 | Passa B |
| 1010 | Shift Left B |
| 1011 | Shift Right B |
| 1100 | Incrementa |
| 1101 | Decrementa |

---

## 🚩 Flags Implementadas

- **Zero (Z)** → Ativada quando o resultado é 0
- **Overflow (V)** → Detecta estouro em operações signed
- **A_menor_B**
- **A_igual_B**

---

## 🧠 Conceitos Utilizados

- Complemento de dois
- Detecção de overflow:  
  `overflow = carry_in_msb XOR carry_out_msb`
- Comparação signed:  
  `A_menor_B = bit_sinal XOR overflow`
- Shift left como multiplicação por 2 (com detecção de overflow)

---

## 🛠️ Ferramentas

- VHDL
- Simulador ModelSim / Vivado

---

## 📚 Autor

Desenvolvido por **Cawan Soares**  
Projeto acadêmico – Engenharia de Computação

---

## 🚀 Objetivo

Consolidar conhecimentos em:

- Arquitetura de Computadores
- Lógica Digital
- Projeto Estrutural em VHDL
- Funcionamento interno de uma ALU

# Laboratório 3 - Multiplexadores

## Objetivos

1. Experimentar a descrição em VHDL de circuitos na forma comportamental;
2. Reforçar os conceitos de multiplexadores e demultiplexadores.
3. Pôr em prática conceitos aprendidos na disciplina Circuitos Digitais - Teoria.

## Introdução

Rever dois conceitos importantes de circuitos digitais: multiplexadores e demultiplexadores. Também serão apresentadas duas formas de implementações deste tipo de circuito combinacional.

## Atividade Laborial

Considerando entradas de dados com largura de 1 bit:

1. Implemente em VHDL, utilizando circuitos lógicos, um MUX 2x1;
2. Implemente em VHDL, utilizando a descrição comportamental, um MUX 2x1;
3. Implemente em VHDL, utilizando a descrição comportamental, um MUX 4x1;
4. Implemente em VHDL, utilizando a descrição comportamental + componentes, um MUX 4x1 utilizando MUX 2x1.
5. Entregue um relatório contendo/descrevendo a execução dos itens 1 a 4

### Dica

A descrição de sinais de seleção, para multiplexadores com mais de duas entradas, pode ser auxiliada pelo(s):

- Uso do comando `x <= a & b`, o qual concatena em x os valores de a e b.
- Uso de vetores de bits, declarados com variáveis do tipo `BIT_VECTOR`.
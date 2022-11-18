# Laboratório 06 - Contadores

## Introdução

Os contadores são divididos em contadores síncronos e assíncronos. Os contadores síncronos são aqueles em que a mudança do seu estado ocorre em cada pulso de clock, enquanto os contadores assíncronos não possuem uma entrada de clock. Nessa aula, trataremos apenas dos contadores síncronos, sendo apresentados os contadores crescentes e decrescentes.

### Objetivos

- Experimentar a descrição em VHDL de circuitos na forma comportamental; 
- Reforçar os conceitos de contadores assíncronos e síncronos;
- Pôr em prática conceitos aprendidos na disciplina Circuitos Digitais - Teoria.

## Contadores

Contadores Um contador de N bits é um componente que pode incrementar ou decrementar o próprio valor a cada ciclo de relógio, quando uma entrada de habilitação é 1. Incrementar significa adicionar 1 a sua contagem e decrementar significa subtrair 1 a sua contagem. Um contador que pode incrementar é conhecido como contador crescente, um contador que pode decrementar é conhecido como contador decrescente e um contador que pode incrementar e decrementar é conhecido como contador crescente/decrescente.
Um contador crescente de quatro bits produz a seguinte sequência: 0000, 0001, 0010, 0011, 0100, 0101, 0110, 0111, 1000, 1001, 1010, 1011, 1100, 1101, 1110, 1111, 0000, 0001, etc. Note que quando o contador atinge o seu valor mais alto (1111), ele retorna para 0. De forma similar, um contador decrescente dá uma volta completa quando chega a 0 e, em seguida, indo para o valor mais elevado.

## Atividades

1. Implemente um contador crescente de 4 bits que conte até sua última contagem e retorne ao seu valor inicial. Adicione o sinal indicativo de término de contagem: tc=1 quando o contador atingir 1111 e tc=0 caso contrário.

2. Implemente um contador decrescente de 4 bits. Adicione o sinal indicativo de término de contagem: tc=1 quando o contador atingir 0000 e tc=0 caso contrário.

3. Satisfaça apenas uma das seguintes condições: 
    - Apresente o trabalho contendo os códigos e simulações em sala de aula até o dia 25/11/22 OU; 

    - Elabore e entregue um relatório com a descrição do experimento, códigos desenvolvidos e resultados de simulações que comprovem o funcionamento dos componentes desenvolvidos nos itens 1 e 2, até o dia 1/12/22
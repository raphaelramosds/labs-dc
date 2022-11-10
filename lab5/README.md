# Laboratório 05 - Registradores

## Introdução

O projeto em questão apresenta a implementação de dois tipos de registradores: o sensível ao nível e o senvível à borda, assim como as suas simulações. O primeiro é implementado com latches D de 1 bit, enquanto o segundo com flip-flops D para 1 bit.


### Objetivos

- Utilizar a linguagem VHDL para implementar um latch D e um flip-flop D para 1 bit.

- Desenvolver dois registradores de quatro bits, sendo um baseado em latches D e outro baseado em flip flops D

## Metodologia

o clock usado para todos os circuitos sequenciais tem periodo de *10 ns*. O *software* utilizado para implementar e simular os registradores foi o *Quartus II* na sua edição para internet.

Os dados de entrada que foram usados nos registradores foram `d0, d1, d2` e `d3`, todos com largura 1 bit. Com a função *Random values* presente na ferramenta *Simulation Waveform Editor*, disponibilizada pelo *Quartus II*, foi possível setar as entradas com valores 1 ou 0 escolhidos ao acaso em subintervalos de *5 ns* ou de *10 ns*, os quais correspondem as opções *Every grid interval* e *Every half grid interval*, respectivamente.

## Registrador sensível ao nível

O registrador sensível ao nível de *N* bits é construido com *N* latches D para 1 bit em paralelo. A arquitetura para o latch D de 1 bit tem como entradas `D` e `c`, e saída `Q`

| **c** | **D** | **Q** | **Q´** |
|-------|-------|-------|--------|
| 0     | 0     | Q     | Q´     |
| 0     | 1     | Q     | Q´     |
| 1     | 0     | 0     | 1      |
| 1     | 1     | 1     | 0      |

Pela tabela acima, o latch D apenas vai registrar o valor lógico de `D` em `Q` se o clock tiver nível alto.

![Latch D waveform](https://github.com/raphaelramosds/labs_cd/blob/dev/lab5/q1_dlatch/waves.PNG)


## Registrador sensível a borda

O registrador sensível a borda de *N* bits é construido com *N* flip-flops D para 1 bit em paralelo. A arquitetura para o flip flop D de 1 bit tem como entradas `D` e `c`, e saída `Q`

| **D** | **clk** | **Q** |
|:-----:|:-------:|:-----:|
|   0   |    ↑    |   0   |
|   1   |    ↑    |   1   |

Pela tabela acima, o flipflop D apenas vai registrar o valor lógico de `D` em `Q` se o clock `clk` tiver uma transição de zero para um.

![Flip flop D waveform](https://github.com/raphaelramosds/labs_cd/blob/dev/lab5/q2_dflipflop/waves.PNG)
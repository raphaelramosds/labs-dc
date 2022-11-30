# Q1 - Or Gate

Desenvolver a porta **OR** em VHDL e simular utilizando o Quartus.

## Implementation code in VHDL

[View File](./OrGate.vhd)

```vhdl
ENTITY OrGate IS
	PORT (
		a, b : IN BIT;
		s : OUT BIT
	);
END OrGate;

ARCHITECTURE main OF OrGate IS
BEGIN
	s <= a OR b;
END ARCHITECTURE main;
```

## Waves

![Waves or gate](./assets/out_or_gate.PNG "Waves or gate")

## RTL Viewer

![RTL Viewer or gate](./assets/RTL_viewer.jpeg "RTL Viewer or gate")

## Truth Table

[Download csv](./assets/truth_table.csv)

|INPUTS|FIELD2|OUTPUT   |
|------|------|---------|
|a     |b     |s = a + b|
|0     |0     |0        |
|1     |0     |1        |
|0     |1     |0        |
|1     |1     |1        |

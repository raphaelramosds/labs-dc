LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latchD IS
	PORT(D, c : IN BIT;
		  Q, Qc : OUT BIT);
END;

ARCHITECTURE behav OF latchD IS
BEGIN
	PROCESS (D, c)
		BEGIN
			IF (c = '1' AND D = '1') THEN 
				Q <= '1'; 
				Qc <= '0';
			ELSIF (c = '1' AND D = '0') THEN 
				Q <= '0';
				Qc <= '1';
		END IF;
	END PROCESS;
END;
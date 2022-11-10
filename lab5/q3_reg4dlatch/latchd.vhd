LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latchd IS
	PORT(D, c : IN BIT;
		  Q : OUT BIT);
END;

ARCHITECTURE behav OF latchd IS
BEGIN
	PROCESS (D, c)
		BEGIN
			IF (c = '1' AND D = '1') THEN 
				Q <= '1'; 
			ELSIF (c = '1' AND D = '0') THEN 
				Q <= '0';
		END IF;
	END PROCESS;
END;
library ieee;
use ieee.std_logic_1164.all;


entity synchronizer is port (

			clk					: in std_logic;
			reset					: in std_logic;
			din					: in std_logic;
			dout					: out std_logic
  );
 end synchronizer;
 
 
architecture circuit of synchronizer is

	Signal sreg				: std_logic_vector(1 downto 0);

BEGIN



end;
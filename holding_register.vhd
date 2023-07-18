library ieee;
use ieee.std_logic_1164.all;


entity holding_register is port (

			clk					: in std_logic;
			reset				: in std_logic;
			register_clr		: in std_logic;
			din					: in std_logic;
			dout				: out std_logic
  );
 end holding_register;
 
 architecture circuit of holding_register is

	Signal sreg				: std_logic;


BEGIN
	reg: process (clk)
		begin

		if(rising_edge(clk)) then
			dout <= (din or dout) and (not (register_clear or reset));
		end if;
		
	end process
end;
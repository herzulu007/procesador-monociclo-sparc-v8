
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity nextProgramCounter is
    Port ( InAddress : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           outAddress : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0'));
end nextProgramCounter;

architecture arq_nextProgramCounter of nextProgramCounter is

begin
	process(clk,Reset)

	begin

		if Reset = '1' then 
			OutAddress <= "00000000000000000000000000000000";
		elsif rising_edge(clk) then 
			OutAddress <= InAddress;
		end if;
	end process;

end arq_nextProgramCounter;


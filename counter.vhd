library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity counter is
    Port ( rst,clk, Eneable : in std_logic;
           o: out std_logic_vector(15 downto 0));
end counter;

architecture count_arch of counter is
   
	signal count : std_logic_vector(15 downto 0);
		begin
			process(rst,clk, Eneable)
				begin
				if (rst = '1') then count <= "0000000000000000";
				elsif clk'event and clk = '1' and Eneable = '1' then 
				count <= count + 1;
				end if;
			end process;
         o <= count;
	end count_arch;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PIPO_OUT is 
Port(CLK,RESET :in std_logic;
     D:in std_logic_vector(7 downto 0);
     Q:out std_logic_vector(7 downto 0));
end PIPO_OUT;

Architecture Behavioural of PIPO_OUT is 
	begin
		Process(CLK,Reset)
		begin
		if (Reset ='1') then
			Q<="00000000";
		elsif(CLK'event and CLK='1') then
			Q<=D;
		end if;
	end Process;
end Behavioural;
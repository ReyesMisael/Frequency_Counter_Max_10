library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PIPO is 
Port(CLK,RESET :in std_logic;
     D:in std_logic_vector(3 downto 0);
     Q:out std_logic_vector(3 downto 0));
end PIPO;

Architecture Behavioural of PIPO is 
	begin
		Process(CLK,Reset)
		begin
		if (Reset ='1') then
			Q<="0000";
		elsif(CLK'event and CLK='1') then
			Q(0)<=D(0);
			Q(1)<=D(1);
			Q(2)<=D(2);
			Q(3)<=D(3);
		end if;
	end Process;
end Behavioural;
library IEEE;
use IEEE.std_logic_1164.all;

entity comparator is
	generic(
			N : positive := 8
			);
	port(
		Clk   : in std_logic;
		RST   : in std_logic;
		En    : in std_logic;
		A_in  : in std_logic_vector(N-1 downto 0);
		B_in  : in std_logic_vector(N-1 downto 0);
		C_out : out std_logic
		);
end comparator;

architecture comparatorArch of comparator is
	signal C_S : std_logic := '0';
	begin
		process(Clk, RST, En)
		begin
			if (RST = '1') then
				C_S <=  '0';
			elsif (CLK'event and CLK = '1') then
				if (En = '1') then
					if A_in > B_in then
						C_S <= '1';
					else
						C_S <= '0';
					end if;
				else
					C_S <= C_S;
				end if;
			end if;
		end process;
		C_Out <= C_S;	
end architecture;
				
				
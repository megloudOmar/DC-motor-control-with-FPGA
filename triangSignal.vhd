library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity triangSignal is
	generic(
			N : positive := 8
			);
	port(
		Clk   : in std_logic;
		RST   : in std_logic;
		En    : in std_logic;
		Triang_out  : out std_logic_vector(N-1 downto 0)
		);
end triangSignal;

architecture triangSignalArch of triangSignal is
	signal Triang_S : unsigned(N-1 downto 0) := (others => '0');
	begin
		process(Clk, RST, En)
		begin
			if (RST = '1') then
				Triang_S <=  (others => '0');
			elsif (CLK'event and CLK = '1') then
				if (En = '1') then
					Triang_S <= Triang_S + 1;
				else
					Triang_S <= Triang_S;
				end if;
			end if;
		end process;
		Triang_Out <= std_logic_vector(Triang_S);	
end architecture;
				


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity clkGen is
    port ( 
			  Clk     : in  std_logic;
           RST 	 : in  std_logic;
           En 		 : in  std_logic;
           ClkSel  : in  std_logic_vector (3 downto 0);
           Clk_out : out  std_logic
			 );
end clkGen;

architecture clkGenArch of ClkGen is
	signal ClkSel_tmp  :   std_logic_vector (3 downto 0):=(others =>'0');
	signal Clk_out_tmp :   std_logic := '0';
	signal Count_tmp   :   unsigned(25 downto 0):=(others =>'0');
	begin
		process(RST, Clk, En, ClkSel_tmp )
			begin
				if (RST = '1') then
					Clk_out_tmp <= '0';
				elsif (Clk'event and Clk = '1') then
					if (En = '1') then
						case ClkSel_tmp is
							when x"0"         => Clk_out_tmp <= Count_tmp(1);
							when x"1"         => Clk_out_tmp <= Count_tmp(2);
							when x"2"         => Clk_out_tmp <= Count_tmp(3);
							when x"3"         => Clk_out_tmp <= Count_tmp(4);
							when x"4"         => Clk_out_tmp <= Count_tmp(5);
							when x"5"         => Clk_out_tmp <= Count_tmp(6);
							when x"6"         => Clk_out_tmp <= Count_tmp(7);
							when x"7"         => Clk_out_tmp <= Count_tmp(8);
							when x"8"         => Clk_out_tmp <= Count_tmp(9);
							when x"9"         => Clk_out_tmp <= Count_tmp(10);
							when x"A"         => Clk_out_tmp <= Count_tmp(11);
							when x"B"         => Clk_out_tmp <= Count_tmp(12);
							when x"C"         => Clk_out_tmp <= Count_tmp(13);
							when x"D"         => Clk_out_tmp <= Count_tmp(14);
							when x"E"         => Clk_out_tmp <= Count_tmp(15);
							when x"F"         => Clk_out_tmp <= Count_tmp(16);
							when others => Clk_out_tmp <= Count_tmp(0);
						end case ;
					else
						Clk_out_tmp <= Clk_out_tmp;
					end if;
				end if;
		end process;
		Clk_out <= Clk_out_tmp;
		ClkSel_tmp <= ClkSel;
	  
		process(RST, Clk, En )
		begin
			if (RST = '1') then
				Count_tmp <= (others =>'0');
			elsif (Clk'event and Clk = '1') then
				if En = '1' then
					Count_tmp <= Count_tmp+1;
				else
					Count_tmp <= Count_tmp;
				end if;
			end if;
	  end process;
end clkGenArch;
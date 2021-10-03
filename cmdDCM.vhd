library IEEE;
use IEEE.std_logic_1164.all;

entity cmdDCM is
port(
	Clk 			: in std_logic;
	RST 			: in std_logic;
	En  			: in std_logic;
	Duty_cycle 	: in std_logic_vector(7 downto 0);
	Clk_out		: out std_logic;
	PWM_out 		: out std_logic
	);
end cmdDCM;

architecture cmdDCMArch of cmdDCM is
component comparator is
	generic(
			N : positive
			);
	port(
		Clk   : in std_logic;
		RST   : in std_logic;
		En    : in std_logic;
		A_in  : in std_logic_vector(N-1 downto 0);
		B_in  : in std_logic_vector(N-1 downto 0);
		C_out : out std_logic
		);
end component;

component triangSignal is
	generic(
			N : positive
			);
	port(
		Clk   : in std_logic;
		RST   : in std_logic;
		En    : in std_logic;
		Triang_out  : out std_logic_vector(N-1 downto 0)
		);
end component;

component clkGen is
    port ( 
			  Clk     : in  std_logic;
           RST 	 : in  std_logic;
           En 		 : in  std_logic;
           ClkSel  : in  std_logic_vector (3 downto 0);
           Clk_out : out  std_logic
			 );
end component;
signal Triang_S : std_logic_vector(7 downto 0):= (others =>'0');
constant ClkSel          : std_logic_vector(3 downto 0):=x"5"; 
begin
	C1 : triangSignal	generic map (8) port map (Clk, RST, En, Triang_S);
	C2 : clkGen								 port map (Clk, RST, En, ClkSel, Clk_out);
	C3 : comparator	generic map (8) port map (Clk, RST, En, Triang_S, Duty_cycle ,PWM_out);
end cmdDCMArch;
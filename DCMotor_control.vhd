library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DCMotor_control is
port(
	Clk 				: in std_logic;
	RST 				: in std_logic;
	En  				: in std_logic;
	Duty_cycle 	   : in std_logic_vector(7 downto 0);
	Clk_out 			: out std_logic;
	PWM_out 			: out std_logic_vector(1 downto 0)
	);
end DCMotor_control;

architecture DCMotor_controlArch of DCMotor_control is
component cmdDCM is
port(
	Clk 			: in std_logic;
	RST 			: in std_logic;
	En  			: in std_logic;
	Duty_cycle 	: in std_logic_vector(7 downto 0);
	Clk_out		: out std_logic;
	PWM_out 		: out std_logic
	);
end component;

signal ClkOut_1 : std_logic:='0';
signal ClkOut_2 : std_logic:='0';
begin
	C1 : cmdDCM port map (Clk, RST, En, Duty_cycle, ClkOut_1, PWM_out(0));
	C2 : cmdDCM port map (Clk, RST, En, Duty_cycle, ClkOut_2, PWM_out(1));
end DCMotor_controlArch;


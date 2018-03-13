library ieee;
use ieee.std_logic_1164.all;
 
entity mult is
  port (
    i_sel    : in  std_logic;
    i_bit1    : in  std_logic;
	i_bit0    : in  std_logic;
    o_mult : out std_logic
    );
end mult;
 
architecture lolkek of mult is
  signal and_gate_1, and_gate_2  : std_logic;
begin
  and_gate_1   <= not i_sel and i_bit1;
  and_gate_2   <= i_sel and i_bit0;
  o_mult <= and_gate_1 or and_gate_2;
end lolkek;
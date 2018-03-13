library ieee;
use ieee.std_logic_1164.all;
 
entity not5 is
  port (
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
	i_bit3    : in  std_logic;
    i_bit4    : in  std_logic;
    o_not1 : out std_logic;
	o_not2 : out std_logic;
	o_not3 : out std_logic;
	o_not4 : out std_logic
    );
end not5;
 
architecture rtl of not5 is
begin
  o_not1 <= not i_bit1;
  o_not2 <= not i_bit2;
  o_not3 <= not i_bit3;
  o_not4 <= not i_bit4;
end rtl;

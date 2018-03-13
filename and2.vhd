library ieee;
use ieee.std_logic_1164.all;
 
entity and2 is
  port (
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
	i_bit3    : in  std_logic;
    i_bit4    : in  std_logic;
    o_and : out std_logic
    );
end and2;
 
architecture rtl of and2 is
begin
  o_and <= i_bit1 and i_bit2 and i_bit3 and i_bit4;
end rtl;

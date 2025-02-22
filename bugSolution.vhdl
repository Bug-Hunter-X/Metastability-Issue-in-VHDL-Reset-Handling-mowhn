```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity my_entity is
  port (
    clk : in std_logic;
    reset : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    data_out : out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of my_entity is
  signal sync_reset : std_logic := '0';
  signal internal_data : std_logic_vector(7 downto 0) := "00000000";
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        sync_reset <= '1';
      else
        sync_reset <= '0';
      end if;
    end if;
  end process;

  process (clk, sync_reset)
  begin
    if sync_reset = '1' then
      internal_data <= "00000000";
    elsif rising_edge(clk) then
      internal_data <= data_in;
    end if;
  end process;

data_out <= internal_data;
end architecture;
```
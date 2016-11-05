library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Code is Port (
	INPUT	 : in  STD_LOGIC_VECTOR (3 downto 0);
	OUTPUT : out STD_LOGIC_VECTOR (3 downto 0));
end Code;

architecture Behavioral of Code is
begin
    process (INPUT, OUTPUT) begin
		 case INPUT is
			 when "1111" => OUTPUT <= "1011";
			 when "1110" => OUTPUT <= "0001";
			 when "1101" => OUTPUT <= "0011";
			 when "1100" => OUTPUT <= "1001";
			 when "1011" => OUTPUT <= "1001";
			 when "1010" => OUTPUT <= "0110";
			 when "1001" => OUTPUT <= "0110";
			 when "1000" => OUTPUT <= "1100";
			 when "0111" => OUTPUT <= "1111";
			 when "0110" => OUTPUT <= "0101";
			 when "0101" => OUTPUT <= "0100";
			 when "0100" => OUTPUT <= "1110";
			 when "0011" => OUTPUT <= "0000";
			 when "0010" => OUTPUT <= "1100";
			 when "0001" => OUTPUT <= "1110";
			 when "0000" => OUTPUT <= "1000";
			 when others =>  OUTPUT <= "1000";
		 end case;
    end process;
end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VHDL is
	Port ( CLK : in STD_LOGIC;
	RST : in STD_LOGIC;
	CNT_O : out STD_LOGIC_VECTOR (3 downto 0);
	VAR_O : out STD_LOGIC_VECTOR (3 downto 0));
end VHDL;

architecture Behavioral of VHDL is

signal STATE : STD_LOGIC_VECTOR (3 downto 0);
begin
	CNT : process(CLK, RST) begin
	
		 if(RST = '1') then
			 STATE <= "1111";
			 VAR_O <= "1000";
		 elsif(CLK'event and CLK = '1') then
			 STATE <= STATE - 1;
			 
			 case STATE is
				 when "1111" => VAR_O <= "1011";
				 when "1110" => VAR_O <= "0001";
				 when "1101" => VAR_O <= "0011";
				 when "1100" => VAR_O <= "1001";
				 when "1011" => VAR_O <= "1001";
				 when "1010" => VAR_O <= "0110";
				 when "1001" => VAR_O <= "0110";
				 when "1000" => VAR_O <= "1100";
				 when "0111" => VAR_O <= "1111";
				 when "0110" => VAR_O <= "0101";
				 when "0101" => VAR_O <= "0100";
				 when "0100" => VAR_O <= "1110";
				 when "0011" => VAR_O <= "0000";
				 when "0010" => VAR_O <= "1100";
				 when "0001" => VAR_O <= "1110";
				 when "0000" => VAR_O <= "1000";
				when others => null;
			 end case;
		End if;
		
	end process;
	
	CNT_O <= STATE;
	
end Behavioral;
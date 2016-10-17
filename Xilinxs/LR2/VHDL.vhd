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
			 VAR_O <= "0010";
		 elsif(CLK'event and CLK = '1') then
			 STATE <= STATE - 1;
			 case STATE is
				 when "1111" => VAR_O <= "0101"; -- 5
				 when "1110" => VAR_O <= "1000"; -- 8
				 when "1101" => VAR_O <= "1010"; -- A
				 when "1100" => VAR_O <= "1000"; -- 8
				 when "1011" => VAR_O <= "0111"; -- 7
				 when "1010" => VAR_O <= "0001"; -- 1
				 when "1001" => VAR_O <= "1000"; -- 8
				 when "1000" => VAR_O <= "1011"; -- B
				 when "0111" => VAR_O <= "0101"; -- 5
				 when "0110" => VAR_O <= "1001"; -- 9
				 when "0101" => VAR_O <= "1110"; -- E
				 when "0100" => VAR_O <= "1111"; -- F
				 when "0011" => VAR_O <= "0100"; -- 4
				 when "0010" => VAR_O <= "1100"; -- C
				 when "0001" => VAR_O <= "0000"; -- 0
				 when "0000" => VAR_O <= "0010"; -- 2
				when others => null;
			 end case;
		End if;
		
	end process;
	
	CNT_O <= STATE;
	
end Behavioral;
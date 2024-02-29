-------------------------------------------------------------------------------
--
-- Title       : TutorVHDL
-- Design      : TutorVHDL
-- Author      : J.Kasperek & P.J.Rajda
-- Company     : AGH Kraków
--
-------------------------------------------------------------------------------
--
-- Description : 
-- Synchronous 3bits binary up counter with synchronous reset
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity TutorVHDL is
	port(
		CLR : in STD_LOGIC;         -- clear signal
		CLK : in STD_LOGIC;         -- clock
		CE  : in STD_LOGIC;         -- clock enable
		LOAD : in STD_LOGIC;						--+
		DATA : in STD_LOGIC_VECTOR(3 downto 0);		--+
		DIR : in STD_LOGIC;
		SEL : in STD_LOGIC;
		OE : in STD_LOGIC;
		LE : in STD_LOGIC;
		Q   : out STD_LOGIC_VECTOR(3 downto 0) -- outputs
	);														   
end TutorVHDL;

architecture TutorVHDL of TutorVHDL is
	signal Q_INT : STD_logic_VECTOR(3 downto 0) := "0000";
	signal Q_SEL : STD_logic_VECTOR(3 downto 0) := "0000";
	signal L_DATA : STD_logic_VECTOR(3 downto 0) := "0000";
begin
	process (CLK, CLR)
	begin
		if CLR = '1' then
			Q_INT <= "0000";  
		elsif rising_edge(CLK) then 	--COUNTER		  
			if CE = '1' then 
				if LOAD = '1' then
					Q_INT <= DATA;
				else
					if DIR = '1' then
						Q_INT <= Q_INT + 1;
					else
						Q_INT <= Q_INT - 1;
					end if;
				end if;
			end if;
		end if;
		
	end process;
 
	process (CLR, LE, DATA)
	begin
		 if CLR = '1' then	--LATCH
			L_DATA <= "0000";
		elsif LE = '1' then
			L_DATA <= DATA;		
		end if;
		
	end process;
	
		
	Q_SEL <= Q_INT when SEL = '0' else L_DATA;
		
		
	Q <= Q_SEL when(OE = '1') else
		 (others => 'Z') when (OE = '0');
			
		

end TutorVHDL;


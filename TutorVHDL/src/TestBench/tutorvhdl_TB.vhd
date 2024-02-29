library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

-- Add your library and packages declaration here ...

entity tutorvhdl_tb is
end tutorvhdl_tb;

architecture TB_ARCHITECTURE of tutorvhdl_tb is
	-- Component declaration of the tested unit
	component tutorvhdl
	port(
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;
		CE : in STD_LOGIC;
		LOAD : in STD_LOGIC;
		DATA : in STD_LOGIC_VECTOR(3 downto 0);
		DIR : in STD_LOGIC;
		SEL : in STD_LOGIC;
		OE : in STD_LOGIC;
		LE : in STD_LOGIC;
		Q : out STD_LOGIC_VECTOR(3 downto 0)); 
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of the tested entity
	signal CLR : STD_LOGIC;
	signal CLK : STD_LOGIC;
	signal CE : STD_LOGIC;	 
	signal LOAD : STD_LOGIC;
	signal DATA : STD_LOGIC_VECTOR(3 downto 0);
	signal DIR : STD_LOGIC;
	signal SEL : STD_LOGIC;
	signal OE : STD_LOGIC;
	signal LE : STD_LOGIC;
	
	-- Observed signals - signals mapped to the output ports of the tested entity
	signal Q : STD_LOGIC_VECTOR(3 downto 0); 

	-- Signal is used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : tutorvhdl
		port map (
			CLR => CLR,
			CLK => CLK,
			Q => Q,
			CE => CE,
			LOAD => LOAD,
			DATA => DATA,
			DIR => DIR,
			SEL => SEL,
			OE => OE,
			LE => LE
		);

	-- Below VHDL code is an inserted .\compile\Initial.vhs
	-- User can modify it ....

	STIMULUS: process
	begin  -- of stimulus process
		-- wait for <time to next event>; -- <current time>

		CLR <= '0';
		wait for 75 ns; -- 0 fs
		CLR <= '1';
		wait for 100 ns; -- 100 ns
		CLR <= '0';
		wait for 5825 ns; -- 200 ns
		--END_SIM <= TRUE;
		-- end of stimulus event
	end process; -- end of stimulus process

	CE_STIMULUS: process
	begin
		CE <= '1';
		wait for 500 ns;
		CE <= '0';
		wait for 300 ns;
		CE <= '1';
		wait for 5200 ns;
	end process;
	
	LOAD_STIMULUS: process
	begin
		LOAD <= '0';
		DATA <= "0111";
		wait for 1000 ns;
		LOAD <= '1';
		wait for 100 ns;
		LOAD <= '0';
		wait for 2900 ns;
		
		DATA <= "0001";
		wait for 600 ns;
		DATA <= "0011";
		wait for 100 ns;
		DATA <= "0101";
		wait for 1300 ns;
	end process;
	
	DIR_STIMULUS: process
	begin
		DIR <= '1';
		wait for 1500 ns;
		DIR <= '0';
		wait for 1500 ns;
		DIR <= '1';
		wait for 3000 ns;
	end process;
	
	SEL_STIMULUS: process
	begin
		SEL <= '0';
		wait for 2000 ns;
		SEL <= '1';
		wait for 2000 ns;
		SEL <= '0';
		wait for 300 ns;
		SEL <= '1';
		wait for 1000 ns;
		SEL <= '0';
		wait for 700 ns;
	end process;
	
	OE_STIMULUS: process
	begin
		OE <= '1';
		wait for 3500 ns;
		OE <= '0';
		wait for 500 ns;
		--END_SIM <= TRUE;
	end process;
	
	LE_STIMULUS: process
	begin
		LE <= '1';
		wait for 4000 ns;
		LE <= '0';
		wait for 500 ns;
		LE <= '1';
		wait for 200 ns;
		LE <= '0';
		wait for 1300 ns;	
	END PROCESS;
		

	CLOCK_CLK : process
	begin
		-- this process was generated based on the formula: 0 0 ns, 1 50 ns -r 100 ns
		-- wait for <time to next event>; -- <current time>
		if END_SIM = FALSE then
			CLK <= '0';
			wait for 50 ns; -- 0 fs
		else
			wait;
		end if;
		if END_SIM = FALSE then
			CLK <= '1';
			wait for 50 ns; -- 50 ns
		else
			wait;
		end if;
	end process;
	
	

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_tutorvhdl of tutorvhdl_tb is
	for TB_ARCHITECTURE
		for UUT : tutorvhdl
			use entity work.tutorvhdl(tutorvhdl);
		end for;
	end for;
end TESTBENCH_FOR_tutorvhdl;

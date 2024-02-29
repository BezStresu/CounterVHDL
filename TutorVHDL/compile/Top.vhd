-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : TutorVHDL
-- Author      : IE
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\TutorVHDL_Wt1620\TutorVHDL\compile\Top.vhd
-- Generated   : Tue Dec 12 17:36:05 2023
-- From        : C:\My_Designs\TutorVHDL_Wt1620\TutorVHDL\src\Top.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity Top is
  port(
       CLR : in STD_LOGIC;
       CLK : in STD_LOGIC;
       LOAD : in STD_LOGIC;
       DIR : in STD_LOGIC;
       SEL : in STD_LOGIC;
       OE : in STD_LOGIC;
       LE : in STD_LOGIC;
       CE : in STD_LOGIC;
       DATA : in STD_LOGIC_VECTOR(3 downto 0);
       Q : out STD_LOGIC_VECTOR(3 downto 0);
       PUSH : in STD_LOGIC
  );
end Top;

architecture Top of Top is

---- Component declarations -----

component Debouncer
  port(
       CLK : in STD_LOGIC;
       CEI : in STD_LOGIC;
       PUSH : in STD_LOGIC;
       CLR : in STD_LOGIC;
       PE : out STD_LOGIC
  );
end component;
component Prescaler
  port(
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CEO : out STD_LOGIC
  );
end component;
component TutorVHDL
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
       Q : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET280 : STD_LOGIC;
signal NET304 : STD_LOGIC;

begin

----  Component instantiations  ----

U2 : TutorVHDL
  port map(
       CLR => CLR,
       CLK => CLK,
       CE => NET280,
       LOAD => LOAD,
       DATA => DATA,
       DIR => DIR,
       SEL => SEL,
       OE => OE,
       LE => LE,
       Q => Q
  );

U3 : Prescaler
  port map(
       CLK => CLK,
       CE => CE,
       CLR => CLR,
       CEO => NET304
  );

U4 : Debouncer
  port map(
       CLK => CLK,
       CEI => NET304,
       PUSH => PUSH,
       CLR => CLR,
       PE => NET280
  );


end Top;

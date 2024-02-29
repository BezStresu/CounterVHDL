-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Dec 12 17:38:13 2023
-- Host        : Lab401-00 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force Top.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer is
  port (
    \DELAY_reg[2]_0\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Debouncer;

architecture STRUCTURE of Debouncer is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(1),
      Q => DELAY(2)
    );
\Q_INT[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => DELAY(2),
      I1 => DELAY(0),
      I2 => DELAY(1),
      O => \DELAY_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler is
  port (
    \DELAY_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_INT_reg[3]\ : in STD_LOGIC
  );
end Prescaler;

architecture STRUCTURE of Prescaler is
  signal \DELAY[2]_i_2_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_3_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_4_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_5_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_6_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_7_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_8_n_0\ : STD_LOGIC;
  signal \DELAY[2]_i_9_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[28]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[28]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[28]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[28]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[32]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \DIVIDER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[32]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DIVIDER_reg[32]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
\DELAY[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \DELAY[2]_i_2_n_0\,
      I1 => \DELAY[2]_i_3_n_0\,
      I2 => \DELAY[2]_i_4_n_0\,
      I3 => \DELAY[2]_i_5_n_0\,
      I4 => CE_IBUF,
      O => E(0)
    );
\DELAY[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => DIVIDER_reg(22),
      I2 => DIVIDER_reg(23),
      I3 => DIVIDER_reg(24),
      I4 => \DELAY[2]_i_6_n_0\,
      O => \DELAY[2]_i_2_n_0\
    );
\DELAY[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => DIVIDER_reg(29),
      I1 => DIVIDER_reg(30),
      I2 => DIVIDER_reg(32),
      I3 => DIVIDER_reg(31),
      I4 => \DELAY[2]_i_7_n_0\,
      O => \DELAY[2]_i_3_n_0\
    );
\DELAY[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => DIVIDER_reg(8),
      I2 => DIVIDER_reg(10),
      I3 => DIVIDER_reg(11),
      I4 => \DELAY[2]_i_8_n_0\,
      O => \DELAY[2]_i_4_n_0\
    );
\DELAY[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \DELAY[2]_i_9_n_0\,
      I1 => DIVIDER_reg(14),
      I2 => DIVIDER_reg(16),
      I3 => DIVIDER_reg(5),
      I4 => DIVIDER_reg(9),
      O => \DELAY[2]_i_5_n_0\
    );
\DELAY[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => DIVIDER_reg(12),
      I2 => DIVIDER_reg(20),
      I3 => DIVIDER_reg(15),
      O => \DELAY[2]_i_6_n_0\
    );
\DELAY[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DIVIDER_reg(26),
      I1 => DIVIDER_reg(25),
      I2 => DIVIDER_reg(28),
      I3 => DIVIDER_reg(27),
      O => \DELAY[2]_i_7_n_0\
    );
\DELAY[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => DIVIDER_reg(17),
      I2 => DIVIDER_reg(6),
      I3 => DIVIDER_reg(19),
      O => \DELAY[2]_i_8_n_0\
    );
\DELAY[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => DIVIDER_reg(1),
      I2 => DIVIDER_reg(2),
      I3 => DIVIDER_reg(4),
      I4 => DIVIDER_reg(3),
      O => \DELAY[2]_i_9_n_0\
    );
\DIVIDER[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[0]_i_2_n_0\
    );
\DIVIDER[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[0]_i_3_n_0\
    );
\DIVIDER[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[0]_i_4_n_0\
    );
\DIVIDER[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[0]_i_5_n_0\
    );
\DIVIDER[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55551555"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[12]_i_2_n_0\
    );
\DIVIDER[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[12]_i_3_n_0\
    );
\DIVIDER[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[12]_i_4_n_0\
    );
\DIVIDER[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[16]_i_2_n_0\
    );
\DIVIDER[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[16]_i_3_n_0\
    );
\DIVIDER[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[16]_i_4_n_0\
    );
\DIVIDER[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(23),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[20]_i_2_n_0\
    );
\DIVIDER[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[20]_i_3_n_0\
    );
\DIVIDER[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[20]_i_4_n_0\
    );
\DIVIDER[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(27),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[24]_i_2_n_0\
    );
\DIVIDER[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(26),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[24]_i_3_n_0\
    );
\DIVIDER[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(25),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[24]_i_4_n_0\
    );
\DIVIDER[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(24),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(31),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[28]_i_2_n_0\
    );
\DIVIDER[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(30),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[28]_i_3_n_0\
    );
\DIVIDER[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(29),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[28]_i_4_n_0\
    );
\DIVIDER[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(28),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[28]_i_5_n_0\
    );
\DIVIDER[32]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(32),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[32]_i_2_n_0\
    );
\DIVIDER[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[4]_i_2_n_0\
    );
\DIVIDER[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[4]_i_3_n_0\
    );
\DIVIDER[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[4]_i_4_n_0\
    );
\DIVIDER[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[8]_i_2_n_0\
    );
\DIVIDER[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[8]_i_3_n_0\
    );
\DIVIDER[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[8]_i_4_n_0\
    );
\DIVIDER[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \DELAY[2]_i_2_n_0\,
      I2 => \DELAY[2]_i_3_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_5_n_0\,
      O => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1_n_7\,
      S(3) => \DIVIDER[0]_i_3_n_0\,
      S(2) => \DIVIDER[0]_i_4_n_0\,
      S(1) => \DIVIDER[0]_i_5_n_0\,
      S(0) => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1_n_7\,
      S(3) => \DIVIDER[12]_i_2_n_0\,
      S(2) => \DIVIDER[12]_i_3_n_0\,
      S(1) => \DIVIDER[12]_i_4_n_0\,
      S(0) => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1_n_7\,
      S(3) => \DIVIDER[16]_i_2_n_0\,
      S(2) => \DIVIDER[16]_i_3_n_0\,
      S(1) => \DIVIDER[16]_i_4_n_0\,
      S(0) => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[20]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[20]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[20]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[20]_i_1_n_4\,
      O(2) => \DIVIDER_reg[20]_i_1_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1_n_7\,
      S(3) => \DIVIDER[20]_i_2_n_0\,
      S(2) => \DIVIDER[20]_i_3_n_0\,
      S(1) => \DIVIDER[20]_i_4_n_0\,
      S(0) => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_4\,
      Q => DIVIDER_reg(23)
    );
\DIVIDER_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_7\,
      Q => DIVIDER_reg(24)
    );
\DIVIDER_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[20]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[24]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[24]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[24]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[24]_i_1_n_4\,
      O(2) => \DIVIDER_reg[24]_i_1_n_5\,
      O(1) => \DIVIDER_reg[24]_i_1_n_6\,
      O(0) => \DIVIDER_reg[24]_i_1_n_7\,
      S(3) => \DIVIDER[24]_i_2_n_0\,
      S(2) => \DIVIDER[24]_i_3_n_0\,
      S(1) => \DIVIDER[24]_i_4_n_0\,
      S(0) => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_6\,
      Q => DIVIDER_reg(25)
    );
\DIVIDER_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_5\,
      Q => DIVIDER_reg(26)
    );
\DIVIDER_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_4\,
      Q => DIVIDER_reg(27)
    );
\DIVIDER_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[28]_i_1_n_7\,
      Q => DIVIDER_reg(28)
    );
\DIVIDER_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[24]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[28]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[28]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[28]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[28]_i_1_n_4\,
      O(2) => \DIVIDER_reg[28]_i_1_n_5\,
      O(1) => \DIVIDER_reg[28]_i_1_n_6\,
      O(0) => \DIVIDER_reg[28]_i_1_n_7\,
      S(3) => \DIVIDER[28]_i_2_n_0\,
      S(2) => \DIVIDER[28]_i_3_n_0\,
      S(1) => \DIVIDER[28]_i_4_n_0\,
      S(0) => \DIVIDER[28]_i_5_n_0\
    );
\DIVIDER_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[28]_i_1_n_6\,
      Q => DIVIDER_reg(29)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[28]_i_1_n_5\,
      Q => DIVIDER_reg(30)
    );
\DIVIDER_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[28]_i_1_n_4\,
      Q => DIVIDER_reg(31)
    );
\DIVIDER_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[32]_i_1_n_7\,
      Q => DIVIDER_reg(32)
    );
\DIVIDER_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_DIVIDER_reg[32]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_DIVIDER_reg[32]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \DIVIDER_reg[32]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \DIVIDER[32]_i_2_n_0\
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1_n_7\,
      S(3) => \DIVIDER[4]_i_2_n_0\,
      S(2) => \DIVIDER[4]_i_3_n_0\,
      S(1) => \DIVIDER[4]_i_4_n_0\,
      S(0) => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1_n_7\,
      S(3) => \DIVIDER[8]_i_2_n_0\,
      S(2) => \DIVIDER[8]_i_3_n_0\,
      S(1) => \DIVIDER[8]_i_4_n_0\,
      S(0) => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_6\,
      Q => DIVIDER_reg(9)
    );
\Q_INT[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \Q_INT_reg[3]\,
      I1 => CE_IBUF,
      I2 => \DELAY[2]_i_5_n_0\,
      I3 => \DELAY[2]_i_4_n_0\,
      I4 => \DELAY[2]_i_3_n_0\,
      I5 => \DELAY[2]_i_2_n_0\,
      O => \DELAY_reg[2]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TutorVHDL is
  port (
    Q_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    LOAD_IBUF : in STD_LOGIC;
    DIR_IBUF : in STD_LOGIC;
    SEL_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_INT_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end TutorVHDL;

architecture STRUCTURE of TutorVHDL is
  signal L_DATA : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_INT[3]_i_4_n_0\ : STD_LOGIC;
  signal Q_INT_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \L_DATA_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \L_DATA_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \L_DATA_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \L_DATA_reg[3]\ : label is "LDC";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Q_INT[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q_INT[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q_INT[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Q_OBUFT[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Q_OBUFT[1]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q_OBUFT[2]_inst_i_1\ : label is "soft_lutpair2";
begin
\L_DATA_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(0),
      G => E(0),
      GE => '1',
      Q => L_DATA(0)
    );
\L_DATA_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(1),
      G => E(0),
      GE => '1',
      Q => L_DATA(1)
    );
\L_DATA_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(2),
      G => E(0),
      GE => '1',
      Q => L_DATA(2)
    );
\L_DATA_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => AR(0),
      D => D(3),
      G => E(0),
      GE => '1',
      Q => L_DATA(3)
    );
\Q_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => D(0),
      I1 => LOAD_IBUF,
      I2 => Q_INT_reg(0),
      O => p_0_in(0)
    );
\Q_INT[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B88B"
    )
        port map (
      I0 => D(1),
      I1 => LOAD_IBUF,
      I2 => Q_INT_reg(0),
      I3 => DIR_IBUF,
      I4 => Q_INT_reg(1),
      O => p_0_in(1)
    );
\Q_INT[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888BBB8888B"
    )
        port map (
      I0 => D(2),
      I1 => LOAD_IBUF,
      I2 => Q_INT_reg(0),
      I3 => DIR_IBUF,
      I4 => Q_INT_reg(2),
      I5 => Q_INT_reg(1),
      O => p_0_in(2)
    );
\Q_INT[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888BBB8888B"
    )
        port map (
      I0 => D(3),
      I1 => LOAD_IBUF,
      I2 => \Q_INT[3]_i_4_n_0\,
      I3 => Q_INT_reg(1),
      I4 => Q_INT_reg(3),
      I5 => Q_INT_reg(2),
      O => p_0_in(3)
    );
\Q_INT[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => Q_INT_reg(1),
      I1 => DIR_IBUF,
      I2 => Q_INT_reg(0),
      O => \Q_INT[3]_i_4_n_0\
    );
\Q_INT_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => p_0_in(0),
      Q => Q_INT_reg(0)
    );
\Q_INT_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => p_0_in(1),
      Q => Q_INT_reg(1)
    );
\Q_INT_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => p_0_in(2),
      Q => Q_INT_reg(2)
    );
\Q_INT_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \Q_INT_reg[3]_0\(0),
      CLR => AR(0),
      D => p_0_in(3),
      Q => Q_INT_reg(3)
    );
\Q_OBUFT[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DATA(0),
      I1 => SEL_IBUF,
      I2 => Q_INT_reg(0),
      O => Q_OBUF(0)
    );
\Q_OBUFT[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DATA(1),
      I1 => SEL_IBUF,
      I2 => Q_INT_reg(1),
      O => Q_OBUF(1)
    );
\Q_OBUFT[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DATA(2),
      I1 => SEL_IBUF,
      I2 => Q_INT_reg(2),
      O => Q_OBUF(2)
    );
\Q_OBUFT[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L_DATA(3),
      I1 => SEL_IBUF,
      I2 => Q_INT_reg(3),
      O => Q_OBUF(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    CLR : in STD_LOGIC;
    CLK : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    DIR : in STD_LOGIC;
    SEL : in STD_LOGIC;
    OE : in STD_LOGIC;
    LE : in STD_LOGIC;
    CE : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PUSH : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal DATA_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DIR_IBUF : STD_LOGIC;
  signal LE_IBUF : STD_LOGIC;
  signal LE_IBUF_BUFG : STD_LOGIC;
  signal LOAD_IBUF : STD_LOGIC;
  signal NET280 : STD_LOGIC;
  signal NET304 : STD_LOGIC;
  signal OE_IBUF : STD_LOGIC;
  signal PUSH_IBUF : STD_LOGIC;
  signal Q_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q_TRI[0]\ : STD_LOGIC;
  signal SEL_IBUF : STD_LOGIC;
  signal U4_n_0 : STD_LOGIC;
begin
CE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CE,
      O => CE_IBUF
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_IBUF
    );
\DATA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(0),
      O => DATA_IBUF(0)
    );
\DATA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(1),
      O => DATA_IBUF(1)
    );
\DATA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(2),
      O => DATA_IBUF(2)
    );
\DATA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(3),
      O => DATA_IBUF(3)
    );
DIR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => DIR,
      O => DIR_IBUF
    );
LE_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => LE_IBUF,
      O => LE_IBUF_BUFG
    );
LE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => LE,
      O => LE_IBUF
    );
LOAD_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => LOAD,
      O => LOAD_IBUF
    );
OE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => OE,
      O => OE_IBUF
    );
PUSH_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PUSH,
      O => PUSH_IBUF
    );
\Q_OBUFT[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(0),
      O => Q(0),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(1),
      O => Q(1),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(2),
      O => Q(2),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => Q_OBUF(3),
      O => Q(3),
      T => \Q_TRI[0]\
    );
\Q_OBUFT[3]_inst_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => OE_IBUF,
      O => \Q_TRI[0]\
    );
SEL_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SEL,
      O => SEL_IBUF
    );
U2: entity work.TutorVHDL
     port map (
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(3 downto 0) => DATA_IBUF(3 downto 0),
      DIR_IBUF => DIR_IBUF,
      E(0) => LE_IBUF_BUFG,
      LOAD_IBUF => LOAD_IBUF,
      \Q_INT_reg[3]_0\(0) => NET280,
      Q_OBUF(3 downto 0) => Q_OBUF(3 downto 0),
      SEL_IBUF => SEL_IBUF
    );
U3: entity work.Prescaler
     port map (
      AR(0) => CLR_IBUF,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      \DELAY_reg[2]\(0) => NET280,
      E(0) => NET304,
      \Q_INT_reg[3]\ => U4_n_0
    );
U4: entity work.Debouncer
     port map (
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => PUSH_IBUF,
      \DELAY_reg[2]_0\ => U4_n_0,
      E(0) => NET304
    );
end STRUCTURE;

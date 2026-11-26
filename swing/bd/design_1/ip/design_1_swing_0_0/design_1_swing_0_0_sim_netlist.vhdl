-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Nov 26 09:22:08 2026
-- Host        : fid2310 running 64-bit Ubuntu 26.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fid/swing-hog/swing/bd/design_1/ip/design_1_swing_0_0/design_1_swing_0_0_sim_netlist.vhdl
-- Design      : design_1_swing_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_swing_0_0_axil_interface is
  port (
    S_AXI_RVALID_reg_0 : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    ram_enaA : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_swing_0_0_axil_interface : entity is "axil_interface";
end design_1_swing_0_0_axil_interface;

architecture STRUCTURE of design_1_swing_0_0_axil_interface is
  signal \^s_axi_awready\ : STD_LOGIC;
  signal S_AXI_BVALID_i_1_n_0 : STD_LOGIC;
  signal S_AXI_RVALID_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \ram_din[31]_i_1_n_0\ : STD_LOGIC;
  signal ram_dout_valid : STD_LOGIC;
  signal ram_dout_valid_i_1_n_0 : STD_LOGIC;
  signal ram_r_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_r_addr_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ram_r_data_buffer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ram_r_data_buffer[31]_i_1_n_0\ : STD_LOGIC;
  signal ram_r_en : STD_LOGIC;
  signal ram_r_en_i_1_n_0 : STD_LOGIC;
  signal ram_w_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_w_addr0 : STD_LOGIC;
  signal ram_w_en : STD_LOGIC;
  signal ram_w_en_i_1_n_0 : STD_LOGIC;
  signal ram_w_wen : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ram_w_wen[0]_i_1_n_0\ : STD_LOGIC;
  signal \ram_w_wen[1]_i_1_n_0\ : STD_LOGIC;
  signal \ram_w_wen[2]_i_1_n_0\ : STD_LOGIC;
  signal \ram_w_wen[3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_w_wen[3]_i_2_n_0\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \w_ready0__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_BVALID_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_AXI_RVALID_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ram_dout_valid_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of ram_r_en_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram_w_wen[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ram_w_wen[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ram_w_wen[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ram_w_wen[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s00_axi_arready_INST_0 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[31]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of w_ready0 : label is "soft_lutpair0";
begin
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_RVALID_reg_0 <= \^s_axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rdata(31 downto 0) <= \^s00_axi_rdata\(31 downto 0);
S_AXI_BVALID_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_bready,
      I2 => \^s00_axi_bvalid\,
      O => S_AXI_BVALID_i_1_n_0
    );
S_AXI_BVALID_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => S_AXI_BVALID_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
S_AXI_RVALID_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7350"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => ram_w_en,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => ram_r_en,
      O => S_AXI_RVALID_i_1_n_0
    );
S_AXI_RVALID_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => S_AXI_RVALID_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => p_0_in
    );
ram_block_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ram_w_en,
      I1 => ram_r_en,
      O => ram_enaA
    );
ram_block_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_w_en,
      I1 => ram_w_wen(3),
      O => WEA(3)
    );
ram_block_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_w_en,
      I1 => ram_w_wen(2),
      O => WEA(2)
    );
ram_block_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_w_en,
      I1 => ram_w_wen(1),
      O => WEA(1)
    );
ram_block_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_w_en,
      I1 => ram_w_wen(0),
      O => WEA(0)
    );
ram_block_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(7),
      I1 => ram_r_addr(7),
      I2 => ram_w_en,
      O => ADDRARDADDR(7)
    );
ram_block_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(6),
      I1 => ram_r_addr(6),
      I2 => ram_w_en,
      O => ADDRARDADDR(6)
    );
ram_block_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(5),
      I1 => ram_r_addr(5),
      I2 => ram_w_en,
      O => ADDRARDADDR(5)
    );
ram_block_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(4),
      I1 => ram_r_addr(4),
      I2 => ram_w_en,
      O => ADDRARDADDR(4)
    );
ram_block_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(3),
      I1 => ram_r_addr(3),
      I2 => ram_w_en,
      O => ADDRARDADDR(3)
    );
ram_block_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(2),
      I1 => ram_r_addr(2),
      I2 => ram_w_en,
      O => ADDRARDADDR(2)
    );
ram_block_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(1),
      I1 => ram_r_addr(1),
      I2 => ram_w_en,
      O => ADDRARDADDR(1)
    );
ram_block_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ram_w_addr(0),
      I1 => ram_r_addr(0),
      I2 => ram_w_en,
      O => ADDRARDADDR(0)
    );
\ram_din[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => \ram_din[31]_i_1_n_0\
    );
\ram_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => ram_din(0),
      R => '0'
    );
\ram_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => ram_din(10),
      R => '0'
    );
\ram_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => ram_din(11),
      R => '0'
    );
\ram_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => ram_din(12),
      R => '0'
    );
\ram_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => ram_din(13),
      R => '0'
    );
\ram_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => ram_din(14),
      R => '0'
    );
\ram_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => ram_din(15),
      R => '0'
    );
\ram_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => ram_din(16),
      R => '0'
    );
\ram_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => ram_din(17),
      R => '0'
    );
\ram_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => ram_din(18),
      R => '0'
    );
\ram_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => ram_din(19),
      R => '0'
    );
\ram_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => ram_din(1),
      R => '0'
    );
\ram_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => ram_din(20),
      R => '0'
    );
\ram_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => ram_din(21),
      R => '0'
    );
\ram_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => ram_din(22),
      R => '0'
    );
\ram_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => ram_din(23),
      R => '0'
    );
\ram_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => ram_din(24),
      R => '0'
    );
\ram_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => ram_din(25),
      R => '0'
    );
\ram_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => ram_din(26),
      R => '0'
    );
\ram_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => ram_din(27),
      R => '0'
    );
\ram_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => ram_din(28),
      R => '0'
    );
\ram_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => ram_din(29),
      R => '0'
    );
\ram_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => ram_din(2),
      R => '0'
    );
\ram_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => ram_din(30),
      R => '0'
    );
\ram_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => ram_din(31),
      R => '0'
    );
\ram_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => ram_din(3),
      R => '0'
    );
\ram_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => ram_din(4),
      R => '0'
    );
\ram_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => ram_din(5),
      R => '0'
    );
\ram_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => ram_din(6),
      R => '0'
    );
\ram_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => ram_din(7),
      R => '0'
    );
\ram_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => ram_din(8),
      R => '0'
    );
\ram_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_din[31]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => ram_din(9),
      R => '0'
    );
ram_dout_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => ram_w_en,
      I1 => ram_r_en,
      O => ram_dout_valid_i_1_n_0
    );
ram_dout_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ram_dout_valid_i_1_n_0,
      Q => ram_dout_valid,
      R => p_0_in
    );
\ram_r_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => ram_r_en,
      O => ram_r_addr_0(0)
    );
\ram_r_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(0),
      Q => ram_r_addr(0),
      R => '0'
    );
\ram_r_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(1),
      Q => ram_r_addr(1),
      R => '0'
    );
\ram_r_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(2),
      Q => ram_r_addr(2),
      R => '0'
    );
\ram_r_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(3),
      Q => ram_r_addr(3),
      R => '0'
    );
\ram_r_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(4),
      Q => ram_r_addr(4),
      R => '0'
    );
\ram_r_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(5),
      Q => ram_r_addr(5),
      R => '0'
    );
\ram_r_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(6),
      Q => ram_r_addr(6),
      R => '0'
    );
\ram_r_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_r_addr_0(0),
      D => s00_axi_araddr(7),
      Q => ram_r_addr(7),
      R => '0'
    );
\ram_r_data_buffer[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_rready,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => ram_r_en,
      I4 => ram_w_en,
      O => \ram_r_data_buffer[31]_i_1_n_0\
    );
\ram_r_data_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(0),
      Q => ram_r_data_buffer(0),
      R => '0'
    );
\ram_r_data_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(10),
      Q => ram_r_data_buffer(10),
      R => '0'
    );
\ram_r_data_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(11),
      Q => ram_r_data_buffer(11),
      R => '0'
    );
\ram_r_data_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(12),
      Q => ram_r_data_buffer(12),
      R => '0'
    );
\ram_r_data_buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(13),
      Q => ram_r_data_buffer(13),
      R => '0'
    );
\ram_r_data_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(14),
      Q => ram_r_data_buffer(14),
      R => '0'
    );
\ram_r_data_buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(15),
      Q => ram_r_data_buffer(15),
      R => '0'
    );
\ram_r_data_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(16),
      Q => ram_r_data_buffer(16),
      R => '0'
    );
\ram_r_data_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(17),
      Q => ram_r_data_buffer(17),
      R => '0'
    );
\ram_r_data_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(18),
      Q => ram_r_data_buffer(18),
      R => '0'
    );
\ram_r_data_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(19),
      Q => ram_r_data_buffer(19),
      R => '0'
    );
\ram_r_data_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(1),
      Q => ram_r_data_buffer(1),
      R => '0'
    );
\ram_r_data_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(20),
      Q => ram_r_data_buffer(20),
      R => '0'
    );
\ram_r_data_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(21),
      Q => ram_r_data_buffer(21),
      R => '0'
    );
\ram_r_data_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(22),
      Q => ram_r_data_buffer(22),
      R => '0'
    );
\ram_r_data_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(23),
      Q => ram_r_data_buffer(23),
      R => '0'
    );
\ram_r_data_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(24),
      Q => ram_r_data_buffer(24),
      R => '0'
    );
\ram_r_data_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(25),
      Q => ram_r_data_buffer(25),
      R => '0'
    );
\ram_r_data_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(26),
      Q => ram_r_data_buffer(26),
      R => '0'
    );
\ram_r_data_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(27),
      Q => ram_r_data_buffer(27),
      R => '0'
    );
\ram_r_data_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(28),
      Q => ram_r_data_buffer(28),
      R => '0'
    );
\ram_r_data_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(29),
      Q => ram_r_data_buffer(29),
      R => '0'
    );
\ram_r_data_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(2),
      Q => ram_r_data_buffer(2),
      R => '0'
    );
\ram_r_data_buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(30),
      Q => ram_r_data_buffer(30),
      R => '0'
    );
\ram_r_data_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(31),
      Q => ram_r_data_buffer(31),
      R => '0'
    );
\ram_r_data_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(3),
      Q => ram_r_data_buffer(3),
      R => '0'
    );
\ram_r_data_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(4),
      Q => ram_r_data_buffer(4),
      R => '0'
    );
\ram_r_data_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(5),
      Q => ram_r_data_buffer(5),
      R => '0'
    );
\ram_r_data_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(6),
      Q => ram_r_data_buffer(6),
      R => '0'
    );
\ram_r_data_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(7),
      Q => ram_r_data_buffer(7),
      R => '0'
    );
\ram_r_data_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(8),
      Q => ram_r_data_buffer(8),
      R => '0'
    );
\ram_r_data_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \ram_r_data_buffer[31]_i_1_n_0\,
      D => \^s00_axi_rdata\(9),
      Q => ram_r_data_buffer(9),
      R => '0'
    );
ram_r_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F022"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => ram_w_en,
      I3 => ram_r_en,
      O => ram_r_en_i_1_n_0
    );
ram_r_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ram_r_en_i_1_n_0,
      Q => ram_r_en,
      R => p_0_in
    );
\ram_w_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_awvalid,
      O => ram_w_addr0
    );
\ram_w_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(0),
      Q => ram_w_addr(0),
      R => '0'
    );
\ram_w_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(1),
      Q => ram_w_addr(1),
      R => '0'
    );
\ram_w_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(2),
      Q => ram_w_addr(2),
      R => '0'
    );
\ram_w_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(3),
      Q => ram_w_addr(3),
      R => '0'
    );
\ram_w_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(4),
      Q => ram_w_addr(4),
      R => '0'
    );
\ram_w_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(5),
      Q => ram_w_addr(5),
      R => '0'
    );
\ram_w_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(6),
      Q => ram_w_addr(6),
      R => '0'
    );
\ram_w_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_addr0,
      D => s00_axi_awaddr(7),
      Q => ram_w_addr(7),
      R => '0'
    );
ram_w_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      O => ram_w_en_i_1_n_0
    );
ram_w_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ram_w_en_i_1_n_0,
      Q => ram_w_en,
      R => p_0_in
    );
\ram_w_wen[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wstrb(0),
      O => \ram_w_wen[0]_i_1_n_0\
    );
\ram_w_wen[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wstrb(1),
      O => \ram_w_wen[1]_i_1_n_0\
    );
\ram_w_wen[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wstrb(2),
      O => \ram_w_wen[2]_i_1_n_0\
    );
\ram_w_wen[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => ram_w_en,
      O => \ram_w_wen[3]_i_1_n_0\
    );
\ram_w_wen[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wstrb(3),
      O => \ram_w_wen[3]_i_2_n_0\
    );
\ram_w_wen_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_w_wen[3]_i_1_n_0\,
      D => \ram_w_wen[0]_i_1_n_0\,
      Q => ram_w_wen(0),
      R => p_0_in
    );
\ram_w_wen_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_w_wen[3]_i_1_n_0\,
      D => \ram_w_wen[1]_i_1_n_0\,
      Q => ram_w_wen(1),
      R => p_0_in
    );
\ram_w_wen_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_w_wen[3]_i_1_n_0\,
      D => \ram_w_wen[2]_i_1_n_0\,
      Q => ram_w_wen(2),
      R => p_0_in
    );
\ram_w_wen_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ram_w_wen[3]_i_1_n_0\,
      D => \ram_w_wen[3]_i_2_n_0\,
      Q => ram_w_wen(3),
      R => p_0_in
    );
s00_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => ram_r_en,
      O => s00_axi_arready
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(0),
      I1 => ram_r_data_buffer(0),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(10),
      I1 => ram_r_data_buffer(10),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(11),
      I1 => ram_r_data_buffer(11),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(12),
      I1 => ram_r_data_buffer(12),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(13),
      I1 => ram_r_data_buffer(13),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(14),
      I1 => ram_r_data_buffer(14),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(15),
      I1 => ram_r_data_buffer(15),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(16),
      I1 => ram_r_data_buffer(16),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(17),
      I1 => ram_r_data_buffer(17),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(18),
      I1 => ram_r_data_buffer(18),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(19),
      I1 => ram_r_data_buffer(19),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(1),
      I1 => ram_r_data_buffer(1),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(20),
      I1 => ram_r_data_buffer(20),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(21),
      I1 => ram_r_data_buffer(21),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(22),
      I1 => ram_r_data_buffer(22),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(23),
      I1 => ram_r_data_buffer(23),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(24),
      I1 => ram_r_data_buffer(24),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(25),
      I1 => ram_r_data_buffer(25),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(26),
      I1 => ram_r_data_buffer(26),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(27),
      I1 => ram_r_data_buffer(27),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(28),
      I1 => ram_r_data_buffer(28),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(29),
      I1 => ram_r_data_buffer(29),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(2),
      I1 => ram_r_data_buffer(2),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(30),
      I1 => ram_r_data_buffer(30),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(31),
      I1 => ram_r_data_buffer(31),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(3),
      I1 => ram_r_data_buffer(3),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(4),
      I1 => ram_r_data_buffer(4),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(5),
      I1 => ram_r_data_buffer(5),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(6),
      I1 => ram_r_data_buffer(6),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(7),
      I1 => ram_r_data_buffer(7),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(8),
      I1 => ram_r_data_buffer(8),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => DOADO(9),
      I1 => ram_r_data_buffer(9),
      I2 => ram_dout_valid,
      O => \^s00_axi_rdata\(9)
    );
w_ready0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000000"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      O => \w_ready0__0\
    );
w_ready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
w_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \w_ready0__0\,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_swing_0_0_bram is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ram_enaA : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_swing_0_0_bram : entity is "bram";
end design_1_swing_0_0_bram;

architecture STRUCTURE of design_1_swing_0_0_bram is
  signal ram_block_reg_n_36 : STD_LOGIC;
  signal ram_block_reg_n_37 : STD_LOGIC;
  signal ram_block_reg_n_38 : STD_LOGIC;
  signal ram_block_reg_n_39 : STD_LOGIC;
  signal ram_block_reg_n_40 : STD_LOGIC;
  signal ram_block_reg_n_41 : STD_LOGIC;
  signal ram_block_reg_n_42 : STD_LOGIC;
  signal ram_block_reg_n_43 : STD_LOGIC;
  signal ram_block_reg_n_44 : STD_LOGIC;
  signal ram_block_reg_n_45 : STD_LOGIC;
  signal ram_block_reg_n_46 : STD_LOGIC;
  signal ram_block_reg_n_47 : STD_LOGIC;
  signal ram_block_reg_n_48 : STD_LOGIC;
  signal ram_block_reg_n_49 : STD_LOGIC;
  signal ram_block_reg_n_50 : STD_LOGIC;
  signal ram_block_reg_n_51 : STD_LOGIC;
  signal ram_block_reg_n_52 : STD_LOGIC;
  signal ram_block_reg_n_53 : STD_LOGIC;
  signal ram_block_reg_n_54 : STD_LOGIC;
  signal ram_block_reg_n_55 : STD_LOGIC;
  signal ram_block_reg_n_56 : STD_LOGIC;
  signal ram_block_reg_n_57 : STD_LOGIC;
  signal ram_block_reg_n_58 : STD_LOGIC;
  signal ram_block_reg_n_59 : STD_LOGIC;
  signal ram_block_reg_n_60 : STD_LOGIC;
  signal ram_block_reg_n_61 : STD_LOGIC;
  signal ram_block_reg_n_62 : STD_LOGIC;
  signal ram_block_reg_n_63 : STD_LOGIC;
  signal ram_block_reg_n_64 : STD_LOGIC;
  signal ram_block_reg_n_65 : STD_LOGIC;
  signal ram_block_reg_n_66 : STD_LOGIC;
  signal ram_block_reg_n_67 : STD_LOGIC;
  signal NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_block_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_block_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_block_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_block_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_block_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_block_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_block_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_block_reg : label is "bram/ram_block_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_block_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_block_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_block_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_block_reg : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of ram_block_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_block_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_block_reg : label is 31;
begin
ram_block_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_01 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_02 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_03 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_04 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_05 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_06 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_07 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_08 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_09 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_0A => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_0B => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_0C => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_0D => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_0E => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_0F => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_10 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_11 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_12 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_13 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_14 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_15 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_16 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_17 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_18 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_19 => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_1A => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_1B => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_1C => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_1D => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_1E => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_1F => X"0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 13) => B"100",
      ADDRARDADDR(12 downto 5) => ADDRARDADDR(7 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15 downto 0) => B"1000000000000000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_ram_block_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => ram_din(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31) => ram_block_reg_n_36,
      DOBDO(30) => ram_block_reg_n_37,
      DOBDO(29) => ram_block_reg_n_38,
      DOBDO(28) => ram_block_reg_n_39,
      DOBDO(27) => ram_block_reg_n_40,
      DOBDO(26) => ram_block_reg_n_41,
      DOBDO(25) => ram_block_reg_n_42,
      DOBDO(24) => ram_block_reg_n_43,
      DOBDO(23) => ram_block_reg_n_44,
      DOBDO(22) => ram_block_reg_n_45,
      DOBDO(21) => ram_block_reg_n_46,
      DOBDO(20) => ram_block_reg_n_47,
      DOBDO(19) => ram_block_reg_n_48,
      DOBDO(18) => ram_block_reg_n_49,
      DOBDO(17) => ram_block_reg_n_50,
      DOBDO(16) => ram_block_reg_n_51,
      DOBDO(15) => ram_block_reg_n_52,
      DOBDO(14) => ram_block_reg_n_53,
      DOBDO(13) => ram_block_reg_n_54,
      DOBDO(12) => ram_block_reg_n_55,
      DOBDO(11) => ram_block_reg_n_56,
      DOBDO(10) => ram_block_reg_n_57,
      DOBDO(9) => ram_block_reg_n_58,
      DOBDO(8) => ram_block_reg_n_59,
      DOBDO(7) => ram_block_reg_n_60,
      DOBDO(6) => ram_block_reg_n_61,
      DOBDO(5) => ram_block_reg_n_62,
      DOBDO(4) => ram_block_reg_n_63,
      DOBDO(3) => ram_block_reg_n_64,
      DOBDO(2) => ram_block_reg_n_65,
      DOBDO(1) => ram_block_reg_n_66,
      DOBDO(0) => ram_block_reg_n_67,
      DOPADOP(3 downto 0) => NLW_ram_block_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_block_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_block_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => ram_enaA,
      ENBWREN => '0',
      INJECTDBITERR => NLW_ram_block_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_block_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_block_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_block_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => WEA(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_swing_0_0_swing is
  port (
    S_AXI_RVALID_reg : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_swing_0_0_swing : entity is "swing";
end design_1_swing_0_0_swing;

architecture STRUCTURE of design_1_swing_0_0_swing is
  signal ram_addrA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_dinA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_doutA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_enaA : STD_LOGIC;
  signal ram_weA : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
axil_interface_S00: entity work.design_1_swing_0_0_axil_interface
     port map (
      ADDRARDADDR(7 downto 0) => ram_addrA(7 downto 0),
      DOADO(31 downto 0) => ram_doutA(31 downto 0),
      S_AXI_AWREADY => s00_axi_wready,
      S_AXI_RVALID_reg_0 => S_AXI_RVALID_reg,
      WEA(3 downto 0) => ram_weA(3 downto 0),
      ram_din(31 downto 0) => ram_dinA(31 downto 0),
      ram_enaA => ram_enaA,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(7 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(7 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
bram_0: entity work.design_1_swing_0_0_bram
     port map (
      ADDRARDADDR(7 downto 0) => ram_addrA(7 downto 0),
      DOADO(31 downto 0) => ram_doutA(31 downto 0),
      WEA(3 downto 0) => ram_weA(3 downto 0),
      ram_din(31 downto 0) => ram_dinA(31 downto 0),
      ram_enaA => ram_enaA,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_swing_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_swing_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_swing_0_0 : entity is "design_1_swing_0_0,swing,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_swing_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_swing_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_swing_0_0 : entity is "swing,Vivado 2025.2";
end design_1_swing_0_0;

architecture STRUCTURE of design_1_swing_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_awready <= \^s00_axi_wready\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s00_axi_wready <= \^s00_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_swing_0_0_swing
     port map (
      S_AXI_RVALID_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(9 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(7 downto 0) => s00_axi_awaddr(9 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s00_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Oct  8 12:07:29 2026
-- Host        : fid2310 running 64-bit Ubuntu 26.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/fid/swing-hog/swing/bd/design_1/ip/design_1_axil_top_0_0/design_1_axil_top_0_0_sim_netlist.vhdl
-- Design      : design_1_axil_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axil_top_0_0_ram is
  port (
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    ram_r_en : in STD_LOGIC;
    ram_w_en : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_block_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_block_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axil_top_0_0_ram : entity is "ram";
end design_1_axil_top_0_0_ram;

architecture STRUCTURE of design_1_axil_top_0_0_ram is
  signal NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_block_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute RTL_RAM_NAME of ram_block_reg : label is "design_1_axil_top_0_0/inst/axil_interface_S00/ram_0/ram_block_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_block_reg : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_block_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_block_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_block_reg : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of ram_block_reg : label is 768;
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
      ADDRARDADDR(15 downto 13) => B"111",
      ADDRARDADDR(12 downto 5) => s00_axi_araddr(7 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 13) => B"111",
      ADDRBWRADDR(12 downto 5) => Q(7 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_block_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_block_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axi_aclk,
      CLKBWRCLK => s00_axi_aclk,
      DBITERR => NLW_ram_block_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => ram_block_reg_0(31 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => s00_axi_rdata(31 downto 0),
      DOBDO(31 downto 0) => NLW_ram_block_reg_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_ram_block_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_block_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_block_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => ram_r_en,
      ENBWREN => ram_w_en,
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
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3 downto 0) => ram_block_reg_1(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axil_top_0_0_axil_interface is
  port (
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_RVALID_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axil_top_0_0_axil_interface : entity is "axil_interface";
end design_1_axil_top_0_0_axil_interface;

architecture STRUCTURE of design_1_axil_top_0_0_axil_interface is
  signal \^s_axi_awready\ : STD_LOGIC;
  signal S_AXI_BVALID_i_1_n_0 : STD_LOGIC;
  signal S_AXI_RVALID_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal ram_r_en : STD_LOGIC;
  signal ram_r_en_i_1_n_0 : STD_LOGIC;
  signal ram_w_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ram_w_addr0 : STD_LOGIC;
  signal ram_w_data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ram_w_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \ram_w_data_reg_n_0_[9]\ : STD_LOGIC;
  signal ram_w_en : STD_LOGIC;
  signal ram_w_en0 : STD_LOGIC;
  signal ram_w_en_i_1_n_0 : STD_LOGIC;
  signal ram_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \w_ready0__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_BVALID_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ram_r_en_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s00_axi_arready_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of w_ready0 : label is "soft_lutpair0";
begin
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_RVALID_reg_0 <= \^s_axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
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
S_AXI_RVALID_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => ram_r_en,
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
ram_0: entity work.design_1_axil_top_0_0_ram
     port map (
      Q(7 downto 0) => ram_w_addr(7 downto 0),
      ram_block_reg_0(31) => \ram_w_data_reg_n_0_[31]\,
      ram_block_reg_0(30) => \ram_w_data_reg_n_0_[30]\,
      ram_block_reg_0(29) => \ram_w_data_reg_n_0_[29]\,
      ram_block_reg_0(28) => \ram_w_data_reg_n_0_[28]\,
      ram_block_reg_0(27) => \ram_w_data_reg_n_0_[27]\,
      ram_block_reg_0(26) => \ram_w_data_reg_n_0_[26]\,
      ram_block_reg_0(25) => \ram_w_data_reg_n_0_[25]\,
      ram_block_reg_0(24) => \ram_w_data_reg_n_0_[24]\,
      ram_block_reg_0(23) => \ram_w_data_reg_n_0_[23]\,
      ram_block_reg_0(22) => \ram_w_data_reg_n_0_[22]\,
      ram_block_reg_0(21) => \ram_w_data_reg_n_0_[21]\,
      ram_block_reg_0(20) => \ram_w_data_reg_n_0_[20]\,
      ram_block_reg_0(19) => \ram_w_data_reg_n_0_[19]\,
      ram_block_reg_0(18) => \ram_w_data_reg_n_0_[18]\,
      ram_block_reg_0(17) => \ram_w_data_reg_n_0_[17]\,
      ram_block_reg_0(16) => \ram_w_data_reg_n_0_[16]\,
      ram_block_reg_0(15) => \ram_w_data_reg_n_0_[15]\,
      ram_block_reg_0(14) => \ram_w_data_reg_n_0_[14]\,
      ram_block_reg_0(13) => \ram_w_data_reg_n_0_[13]\,
      ram_block_reg_0(12) => \ram_w_data_reg_n_0_[12]\,
      ram_block_reg_0(11) => \ram_w_data_reg_n_0_[11]\,
      ram_block_reg_0(10) => \ram_w_data_reg_n_0_[10]\,
      ram_block_reg_0(9) => \ram_w_data_reg_n_0_[9]\,
      ram_block_reg_0(8) => \ram_w_data_reg_n_0_[8]\,
      ram_block_reg_0(7) => \ram_w_data_reg_n_0_[7]\,
      ram_block_reg_0(6) => \ram_w_data_reg_n_0_[6]\,
      ram_block_reg_0(5) => \ram_w_data_reg_n_0_[5]\,
      ram_block_reg_0(4) => \ram_w_data_reg_n_0_[4]\,
      ram_block_reg_0(3) => \ram_w_data_reg_n_0_[3]\,
      ram_block_reg_0(2) => \ram_w_data_reg_n_0_[2]\,
      ram_block_reg_0(1) => \ram_w_data_reg_n_0_[1]\,
      ram_block_reg_0(0) => \ram_w_data_reg_n_0_[0]\,
      ram_block_reg_1(3 downto 0) => ram_wstrb(3 downto 0),
      ram_r_en => ram_r_en,
      ram_w_en => ram_w_en,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(7 downto 0) => s00_axi_araddr(7 downto 0),
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0)
    );
ram_r_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => ram_r_en,
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
\ram_w_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => ram_w_data(0)
    );
\ram_w_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(0),
      Q => \ram_w_data_reg_n_0_[0]\,
      R => '0'
    );
\ram_w_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(10),
      Q => \ram_w_data_reg_n_0_[10]\,
      R => '0'
    );
\ram_w_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(11),
      Q => \ram_w_data_reg_n_0_[11]\,
      R => '0'
    );
\ram_w_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(12),
      Q => \ram_w_data_reg_n_0_[12]\,
      R => '0'
    );
\ram_w_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(13),
      Q => \ram_w_data_reg_n_0_[13]\,
      R => '0'
    );
\ram_w_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(14),
      Q => \ram_w_data_reg_n_0_[14]\,
      R => '0'
    );
\ram_w_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(15),
      Q => \ram_w_data_reg_n_0_[15]\,
      R => '0'
    );
\ram_w_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(16),
      Q => \ram_w_data_reg_n_0_[16]\,
      R => '0'
    );
\ram_w_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(17),
      Q => \ram_w_data_reg_n_0_[17]\,
      R => '0'
    );
\ram_w_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(18),
      Q => \ram_w_data_reg_n_0_[18]\,
      R => '0'
    );
\ram_w_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(19),
      Q => \ram_w_data_reg_n_0_[19]\,
      R => '0'
    );
\ram_w_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(1),
      Q => \ram_w_data_reg_n_0_[1]\,
      R => '0'
    );
\ram_w_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(20),
      Q => \ram_w_data_reg_n_0_[20]\,
      R => '0'
    );
\ram_w_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(21),
      Q => \ram_w_data_reg_n_0_[21]\,
      R => '0'
    );
\ram_w_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(22),
      Q => \ram_w_data_reg_n_0_[22]\,
      R => '0'
    );
\ram_w_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(23),
      Q => \ram_w_data_reg_n_0_[23]\,
      R => '0'
    );
\ram_w_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(24),
      Q => \ram_w_data_reg_n_0_[24]\,
      R => '0'
    );
\ram_w_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(25),
      Q => \ram_w_data_reg_n_0_[25]\,
      R => '0'
    );
\ram_w_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(26),
      Q => \ram_w_data_reg_n_0_[26]\,
      R => '0'
    );
\ram_w_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(27),
      Q => \ram_w_data_reg_n_0_[27]\,
      R => '0'
    );
\ram_w_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(28),
      Q => \ram_w_data_reg_n_0_[28]\,
      R => '0'
    );
\ram_w_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(29),
      Q => \ram_w_data_reg_n_0_[29]\,
      R => '0'
    );
\ram_w_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(2),
      Q => \ram_w_data_reg_n_0_[2]\,
      R => '0'
    );
\ram_w_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(30),
      Q => \ram_w_data_reg_n_0_[30]\,
      R => '0'
    );
\ram_w_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(31),
      Q => \ram_w_data_reg_n_0_[31]\,
      R => '0'
    );
\ram_w_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(3),
      Q => \ram_w_data_reg_n_0_[3]\,
      R => '0'
    );
\ram_w_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(4),
      Q => \ram_w_data_reg_n_0_[4]\,
      R => '0'
    );
\ram_w_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(5),
      Q => \ram_w_data_reg_n_0_[5]\,
      R => '0'
    );
\ram_w_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(6),
      Q => \ram_w_data_reg_n_0_[6]\,
      R => '0'
    );
\ram_w_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(7),
      Q => \ram_w_data_reg_n_0_[7]\,
      R => '0'
    );
\ram_w_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(8),
      Q => \ram_w_data_reg_n_0_[8]\,
      R => '0'
    );
\ram_w_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ram_w_data(0),
      D => s00_axi_wdata(9),
      Q => \ram_w_data_reg_n_0_[9]\,
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
\ram_wstrb[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      O => ram_w_en0
    );
\ram_wstrb_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_w_en0,
      D => s00_axi_wstrb(0),
      Q => ram_wstrb(0),
      S => p_0_in
    );
\ram_wstrb_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_w_en0,
      D => s00_axi_wstrb(1),
      Q => ram_wstrb(1),
      S => p_0_in
    );
\ram_wstrb_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_w_en0,
      D => s00_axi_wstrb(2),
      Q => ram_wstrb(2),
      S => p_0_in
    );
\ram_wstrb_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_w_en0,
      D => s00_axi_wstrb(3),
      Q => ram_wstrb(3),
      S => p_0_in
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
entity design_1_axil_top_0_0_axil_top is
  port (
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_RVALID_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axil_top_0_0_axil_top : entity is "axil_top";
end design_1_axil_top_0_0_axil_top;

architecture STRUCTURE of design_1_axil_top_0_0_axil_top is
begin
axil_interface_S00: entity work.design_1_axil_top_0_0_axil_interface
     port map (
      S_AXI_AWREADY => S_AXI_WREADY,
      S_AXI_RVALID_reg_0 => S_AXI_RVALID_reg,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axil_top_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axil_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axil_top_0_0 : entity is "design_1_axil_top_0_0,axil_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axil_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axil_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axil_top_0_0 : entity is "axil_top,Vivado 2025.2";
end design_1_axil_top_0_0;

architecture STRUCTURE of design_1_axil_top_0_0 is
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
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
inst: entity work.design_1_axil_top_0_0_axil_top
     port map (
      S_AXI_RVALID_reg => s00_axi_rvalid,
      S_AXI_WREADY => \^s00_axi_wready\,
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
end STRUCTURE;

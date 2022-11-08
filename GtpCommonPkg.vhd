library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

package GtpCommonPkg is

   type GtpCommonIbType is record
      pllReset          : std_logic;
      pllRefClkSel      : std_logic_vector(2 downto 0);
      pllPD             : std_logic;
   end record GtpCommonIbType;

   constant GTP_COMMON_IB_INIT_C : GtpCommonIbType := (
      pllReset          => '0',
      pllRefClkSel      => "001",
      pllPD             => '1'
   );

   type GtpCommonIbArray is array (natural range <>) of GtpCommonIbType;

   type GtpCommonObType is record
      pllOutClk         : std_logic;
      pllOutRefClk      : std_logic;
      pllLock           : std_logic;
      pllRefClkLost     : std_logic;
   end record GtpCommonObType;

   constant GTP_COMMON_OB_INIT_C : GtpCommonObType := (
      pllOutClk         => '0',
      pllOutRefClk      => '0',
      pllLock           => '0',
      pllRefCLkLost     => '1'
   );

   type GtpCommonObArray is array (natural range <>) of GtpCommonObType;

   -- By default the TX/RXOUT_DIV is set statically by the wizard - which may
   -- not fit the PLL setup!!. Unfortunately the user has no control over the
   -- static setting. A a work-around we can enable the t/rxrate ports in the
   -- wizard and provide explicit settings:
   constant GTP_OUTDIV_STATIC_C : std_logic_vector(2 downto 0) := "000";
   constant GTP_OUTDIV_1_C      : std_logic_vector(2 downto 0) := "001";
   constant GTP_OUTDIV_2_C      : std_logic_vector(2 downto 0) := "010";
   constant GTP_OUTDIV_4_C      : std_logic_vector(2 downto 0) := "011";
   constant GTP_OUTDIV_8_C      : std_logic_vector(2 downto 0) := "100";

end package GtpCommonPkg;

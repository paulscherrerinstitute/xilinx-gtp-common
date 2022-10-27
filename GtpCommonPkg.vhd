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

end package GtpCommonPkg;

##
## Core Generator Run Script, generator for Project Navigator create command
##

proc findRtfPath { relativePath } {
   set xilenv ""
   if { [info exists ::env(XILINX) ] } {
      if { [info exists ::env(MYXILINX)] } {
         set xilenv [join [list $::env(MYXILINX) $::env(XILINX)] $::xilinx::path_sep ]
      } else {
         set xilenv $::env(XILINX)
      }
   }
   foreach path [ split $xilenv $::xilinx::path_sep ] {
      set fullPath [ file join $path $relativePath ]
      if { [ file exists $fullPath ] } {
         return $fullPath
      }
   }
   return ""
}

source [ findRtfPath "data/projnav/scripts/dpm_cgUtils.tcl" ]

set result [ run_cg_create "xilinx.com:ip:s6_gtpwizard:1.11" "pcs_pma_s6_gtpwizard" "Spartan-6 FPGA GTP Transceiver Wizard" "Spartan-6 FPGA GTP Transceiver Wizard (xilinx.com:ip:s6_gtpwizard:1.11) generated by Project Navigator" xc6slx150t-3fgg676 VHDL ]

if { $result == 0 } {
   puts "Core Generator create command completed successfully."
} elseif { $result == 1 } {
   puts "Core Generator create command failed."
} elseif { $result == 3 || $result == 4 } {
   # convert 'version check' result to real return range, bypassing any messages.
   set result [ expr $result - 3 ]
} else {
   puts "Core Generator create cancelled."
}
exit $result

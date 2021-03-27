source -echo -verbose ../scripts/fix_macro_outputs_place.tcl
echo READING SCANDEF
read_def ../../syn/outputs/ORCA_TOP.dct.scan.def
echo FINISHED READING SCANDEF

# Creating seperate voltage area for core area. 
create_voltage_area -power_domains PD_RISC_CORE -region {{11 400} {450 640}}
# Commit the UPF settings for ORCA.
commit_upf


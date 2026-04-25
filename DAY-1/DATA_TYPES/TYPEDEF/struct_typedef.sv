module struct_type;
  typedef struct{
    string name;
    int id;
    longint age;
  }personal_details;
  
  initial begin
    personal_details details;
    
    details.name = "KAR";
    details.id = 2025;
    details.age = 25;
    
    $display("Name = %p", details.name);
    $display("id - %p", details.id);
    $display("age = %p", details.age);
  end
endmodule 


QuestaSim-64 qrun 2025.2 Utility 2025.05 May 31 2025
Start time: 02:05:08 on Apr 25,2026
qrun -batch -access=rw+/. -timescale 1ns/1ns -mfcu design.sv testbench.sv -voptargs="+acc=npr" -do " run -all; exit" 
** Note: (qrun-220) 'modelsim.ini' is used as the ini file.
Creating library 'qrun.out/work'.
QuestaSim-64 vlog 2025.2 Compiler 2025.05 May 31 2025
Start time: 02:05:08 on Apr 25,2026
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -statslog qrun.out/stats_log -csession=incr 
** Note: (vlog-220) 'modelsim.ini' is used as the ini file.
-- Compiling module struct_type

Top level modules:
	struct_type
End time: 02:05:08 on Apr 25,2026, Elapsed time: 0:00:00
Errors: 0, Warnings: 0
QuestaSim-64 vopt 2025.2 Compiler 2025.05 May 31 2025
** Warning: (vopt-10587) Some optimizations are turned off because the +acc switch is in effect. This will cause your simulation to run slowly. Please use -access/-debug to maintain needed visibility. The +acc switch would be deprecated in a future release.
Start time: 02:05:08 on Apr 25,2026
vopt -access=rw+/. -timescale 1ns/1ns -mfcu "+acc=npr" -findtoplevels qrun.out/work+2+ -work qrun.out/work -statslog qrun.out/stats_log -csession=incr -o qrun_opt -csessionid=3 
** Note: (vopt-220) 'modelsim.ini' is used as the ini file.

Top level modules:
	struct_type

Analyzing design...
-- Loading module struct_type
Optimizing 1 design-unit (inlining 0/1 module instances):
-- Optimizing module struct_type(fast)
Optimized design name is qrun_opt
End time: 02:05:09 on Apr 25,2026, Elapsed time: 0:00:01
Errors: 0, Warnings: 1
# ** Note: (vsim-220) 'modelsim.ini' is used as the ini file.
# vsim -batch -lib qrun.out/work -do " run -all; exit" -statslog qrun.out/stats_log qrun_opt -appendlog -l qrun.log 
# Start time: 02:05:09 on Apr 25,2026
# //  Questa Sim-64
# //  Version 2025.2 linux_x86_64 May 31 2025
# //
# // Unpublished work. Copyright 2025 Siemens
# //
# // This material contains trade secrets or otherwise confidential information
# // owned by Siemens Industry Software Inc. or its affiliates (collectively,
# // "SISW"), or its licensors. Access to and use of this information is strictly
# // limited as set forth in the Customer's applicable agreements with SISW.
# //
# // This material may not be copied, distributed, or otherwise disclosed outside
# // of the Customer's facilities without the express written permission of SISW,
# // and may not be used in any way not expressly authorized by SISW.
# //
# Loading sv_std.std
# Loading work.struct_type(fast)
# 
# run -all
# Name = "KAR"
# id - 2025
# age = 25
# exit
# End time: 02:05:10 on Apr 25,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
End time: 02:05:10 on Apr 25,2026, Elapsed time: 0:00:02
*** Summary *********************************************
    qrun: Errors:   0, Warnings:   0
    vlog: Errors:   0, Warnings:   0
    vopt: Errors:   0, Warnings:   1
    vsim: Errors:   0, Warnings:   0
  Totals: Errors:   0, Warnings:   1
Done

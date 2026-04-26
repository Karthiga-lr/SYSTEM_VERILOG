module fn_array;
  initial begin
    int arr[6];
    void'(fun_arr(arr));
    $display("Array of elements = %0p", arr);
  end
  function automatic int fun_arr(ref int arr[6]);
    $display("Entered the function");
    foreach(arr[i])begin
      arr[i] = i +1;
    end
  endfunction
endmodule


[2026-04-26 18:00:19 UTC] vlib work && vlog '-timescale' '1ns/1ns' design.sv testbench.sv  && vsim -c -do "vsim +access+r; run -all; exit"  
VSIMSA: Configuration file changed: `/home/runner/library.cfg'
ALIB: Library "work" attached.
work = ./work/work.lib
WARNING VCP2814 "Function fun_arr should return a value." "design.sv" 8  34
MESSAGE "Unit top modules: fn_array."
SUCCESS "Compile success 0 Errors 1 Warnings  Analysis time: 0[s]."
done
# Aldec, Inc. Riviera-PRO version 2025.04.139.9738 built for Linux64 on May 30, 2025.
# HDL, SystemC, and Assertions simulator, debugger, and design environment.
# (c) 1999-2025 Aldec, Inc. All rights reserved.
# ELBREAD: Elaboration process.
# ELBREAD: Elaboration time 0.0 [s].
# KERNEL: Main thread initiated.
# KERNEL: Kernel process initialization phase.
# ELAB2: Elaboration final pass...
# ELAB2: Create instances ...
# KERNEL: Time resolution set to 1ns.
# ELAB2: Create instances complete.
# SLP: Started
# SLP: Elaboration phase ...
# SLP: Elaboration phase ... done : 0.0 [s]
# SLP: Generation phase ...
# SLP: Generation phase ... done : 0.0 [s]
# SLP: Finished : 0.1 [s]
# SLP: 0 primitives and 1 (100.00%) other processes in SLP
# SLP: 3 (75.00%) signals in SLP and 1 (25.00%) interface signals
# ELAB2: Elaboration final pass complete - time: 0.1 [s].
# KERNEL: SLP loading done - time: 0.0 [s].
# KERNEL: Warning: You are using the Riviera-PRO EDU Edition. The performance of simulation is reduced.
# KERNEL: Warning: Contact Aldec for available upgrade options - sales@aldec.com.
# KERNEL: SLP simulation initialization done - time: 0.0 [s].
# KERNEL: Kernel process initialization done.
# Allocation: Simulator allocated 4538 kB (elbread=427 elab2=4105 kernel=6 sdf=0)
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Entered the function
# KERNEL: Array of elements = 1 2 3 4 5 6
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done

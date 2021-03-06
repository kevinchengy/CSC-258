# Set the working dir, where all compiled Verilog goes.
vlib work

# Compile all verilog modules in mux.v to working dir;
# could also have multiple verilog files.
vlog mux7to1.v

# Load simulation using mux as the top level simulation module.
vsim mux

# Log all signals and add some signals to waveform window.
log {/*}
# add wave {/*} would add all items in top level simulation module.
add wave {/*}

force {SW[0]} 1 0, 0 5
force {SW[1]} 0 0, 1 5
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0 0, 1 5
force {SW[8]} 0 
force {SW[9]} 0
run 10ns

force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 1 0, 0 5
force {SW[3]} 0 0, 1 5
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0 0, 1 5
force {SW[8]} 1 0
force {SW[9]} 0
run 10ns

force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 1 0, 0 5
force {SW[5]} 0 0, 1 5
force {SW[6]} 0
force {SW[7]} 0 0, 1 5
force {SW[8]} 0
force {SW[9]} 1 0
run 10ns

force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 1
force {SW[7]} 0
force {SW[8]} 1
force {SW[9]} 1
run 5ns
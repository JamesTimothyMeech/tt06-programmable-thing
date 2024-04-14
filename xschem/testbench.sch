v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1400 -1380 2200 -980 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=1
logy=0
rawfile=$netlist_dir/testbench.raw
sim_type=ac



dataset=-1
color="9 10 4"
node="i(v3)
i(v2)
i(v1)"

y1=0
y2=1m}
B 2 1400 -980 2200 -580 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/testbench.raw
y2=1
sim_type=ac
y1=5e-08
color="4 7"
node="out%0
outparax%0"}
N 560 -850 560 -840 {
lab=GND}
N 560 -920 560 -910 {
lab=VSS}
N 640 -850 640 -840 {
lab=GND}
N 640 -920 640 -910 {
lab=VDD}
N 1130 -730 1180 -730 {
lab=#net1}
N 1150 -670 1150 -650 {
lab=GND}
N 1240 -730 1260 -730 {
lab=out}
N 1260 -730 1280 -730 {
lab=out}
N 680 -710 680 -700 {
lab=GND}
N 1130 -770 1140 -770 {
lab=VDD}
N 1130 -750 1140 -750 {
lab=VSS}
N 650 -770 680 -770 {
lab=in}
N 680 -770 720 -770 {
lab=in}
N 780 -770 830 -770 {
lab=#net2}
N 800 -770 800 -670 {
lab=#net2}
N 800 -670 950 -670 {
lab=#net2}
N 1010 -670 1130 -670 {
lab=#net1}
N 1130 -730 1130 -670 {
lab=#net1}
N 1120 -530 1170 -530 {
lab=#net3}
N 1140 -470 1140 -450 {
lab=GND}
N 1230 -530 1250 -530 {
lab=outparax}
N 1250 -530 1270 -530 {
lab=outparax}
N 1120 -570 1130 -570 {
lab=VDD}
N 1120 -550 1130 -550 {
lab=VSS}
N 640 -570 670 -570 {
lab=in}
N 670 -570 710 -570 {
lab=in}
N 770 -570 820 -570 {
lab=#net4}
N 790 -570 790 -470 {
lab=#net4}
N 790 -470 940 -470 {
lab=#net4}
N 1000 -470 1120 -470 {
lab=#net3}
N 1120 -530 1120 -470 {
lab=#net3}
C {devices/code.sym} 1150 -1370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/launcher.sym} 1150 -1110 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/testbench.raw ac

"
value="
.param mc_mm_switch=0
.control
let vddc = 10  
alter R1 $&vddc          
repeat 5        
  ac dec 10 1 1e9 uic
  let vddc = vddc * 10 
  write testbench.raw  
  set appendwrite 
  reset 
end

*quit 0
.endc
.end
"}
C {devices/vsource.sym} 560 -880 0 0 {name=V1 value=0 savecurrent=false}
C {devices/lab_pin.sym} 560 -920 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 560 -840 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 640 -880 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 640 -920 0 0 {name=p2 sig_type=std_logic lab=VDD
value=1.8}
C {devices/gnd.sym} 1150 -650 0 0 {name=l2 lab=GND
value=1.8}
C {devices/iopin.sym} 650 -770 2 0 {name=p5 lab=in
}
C {devices/iopin.sym} 1280 -730 0 0 {name=p6 lab=out}
C {devices/res.sym} 1210 -730 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1150 -700 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/simulator_commands_shown.sym} 630 -1380 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param mc_mm_switch=0
.control
save all
let vddc = 1   
*repeat 7
  *alter R1 $&vddc 
  ac dec 10 1 1e9    
  *let vddc = vddc * 10 
  write testbench.raw  
  set appendwrite 
  reset 
*end

*quit 0
.endc
.end
"}
C {devices/gnd.sym} 640 -840 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 680 -740 0 0 {name=V3 value="0 ac 1 0 
+ sin(0 1m 100meg 0 0 0)" savecurrent=false}
C {devices/gnd.sym} 680 -700 0 0 {name=l4 lab=GND}
C {inverter.sym} 980 -750 0 0 {name=x1}
C {devices/lab_pin.sym} 1140 -770 2 0 {name=p3 sig_type=std_logic lab=VDD
value=1.8}
C {devices/lab_pin.sym} 1140 -750 2 0 {name=p4 sig_type=std_logic lab=VSS
value=1.8}
C {devices/capa.sym} 750 -770 3 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 980 -670 1 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1140 -450 0 0 {name=l5 lab=GND
value=1.8}
C {devices/iopin.sym} 640 -570 2 0 {name=p7 lab=in
}
C {devices/iopin.sym} 1270 -530 0 0 {name=p8 lab=outparax}
C {devices/res.sym} 1200 -530 1 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1140 -500 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {inverter.sym} 970 -550 0 0 {name=x2
schematic=inverter_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/inverter.sim.spice])"
tclcommand="textwindow [file normalize ../mag/inverter.sim.spice]"
}
C {devices/lab_pin.sym} 1130 -570 2 0 {name=p9 sig_type=std_logic lab=VDD
value=1.8}
C {devices/lab_pin.sym} 1130 -550 2 0 {name=p10 sig_type=std_logic lab=VSS
value=1.8}
C {devices/capa.sym} 740 -570 3 0 {name=C4
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 970 -470 1 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}

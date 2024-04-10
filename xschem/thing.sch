v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 330 -150 1130 250 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 4"
node="out
in"


rawfile=$netlist_dir/thing.raw




sim_type=tran






x1=0

y1=0.87

x2=1e-06
y2=0.92}
B 2 320 260 1120 660 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=7
node=i(vmeas)
sim_type=tran
rawfile=$netlist_dir/thing.raw



x1=0

y1=0
x2=1e-06
y2=30u}
N -20 150 -10 150 {
lab=#net1}
N -20 170 -10 170 {
lab=VSS}
N -340 170 -320 170 {
lab=in}
N -340 190 -320 190 {
lab=Bias}
N -340 150 -320 150 {
lab=#net2}
N -340 120 -340 150 {
lab=#net2}
N 60 190 80 190 {
lab=#net3}
N 60 120 60 190 {
lab=#net3}
N -20 190 60 190 {
lab=#net3}
N 130 -10 130 0 {
lab=VSS}
N 230 -10 230 -0 {
lab=VDD}
N 230 60 230 70 {
lab=GND}
N 130 60 130 70 {
lab=GND}
N 80 190 120 190 {
lab=#net3}
N 80 250 80 260 {
lab=GND}
N 180 190 200 190 {
lab=Out}
N -330 250 -330 260 {
lab=GND}
N -130 100 60 100 {
lab=#net3}
N 60 100 60 120 {
lab=#net3}
N -340 100 -190 100 {
lab=#net2}
N -340 100 -340 120 {
lab=#net2}
N -430 150 -340 150 {
lab=#net2}
C {devices/ipin.sym} -340 170 0 0 {name=p4 lab=in}
C {devices/opin.sym} 195 190 0 0 {name=p5 lab=Out}
C {devices/ipin.sym} -340 190 0 0 {name=p6 lab=Bias}
C {n_diffamp.sym} -170 170 0 0 {name=x1}
C {devices/code.sym} -60 -50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -240 10 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
value="
.param mc_mm_switch=0
.options savecurrents
.control
save all
noise Out in lin 0 2.0e6
write thing.raw
.endc
"}
C {devices/lab_pin.sym} -10 90 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -10 170 2 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -10 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 130 -10 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 130 30 0 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} 230 30 0 0 {name=V2 value=1.8 savecurrent=false}
C {devices/gnd.sym} 230 70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 130 70 0 0 {name=l2 lab=GND}
C {devices/res.sym} 150 190 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 80 220 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 80 260 0 0 {name=l3 lab=GND}
C {devices/simulator_commands_shown.sym} -670 -10 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
vin in 0 trrandom 2 10000p 0s 0.01 0.9
.param mc_mm_switch=0
.options savecurrents
.control
save all
tran 100p 1000n
write thing.raw
.endc
"}
C {devices/vsource.sym} -330 220 0 0 {name=V3 value=1.2 savecurrent=false}
C {devices/gnd.sym} -430 220 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} -10 120 0 0 {name=Vmeas savecurrent=false}
C {devices/res.sym} -160 100 1 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -430 180 2 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -330 260 0 0 {name=l5 lab=GND}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -340 190 -325 190 {
lab=Bias}
N -340 170 -325 170 {
lab=in}
N -340 125 35 125 {
lab=#net1}
N -340 125 -340 150 {
lab=#net1}
N -340 150 -325 150 {
lab=#net1}
N -25 190 65 190 {
lab=Out}
N 65 125 65 190 {}
N 35 125 65 125 {}
N -25 150 -10 150 {}
N -25 170 -10 170 {}
C {sky130_tests/n_diffamp.sym} -175 170 0 0 {name=x1}
C {devices/ipin.sym} -340 170 0 0 {name=p4 lab=in}
C {devices/opin.sym} 65 190 0 0 {name=p5 lab=Out}
C {devices/ipin.sym} -340 190 0 0 {name=p6 lab=Bias}
C {devices/iopin.sym} -10 150 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -10 170 0 0 {name=p2 lab=VSS}

v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -170 160 -140 {
lab=VDD}
N 160 180 160 210 {
lab=VSS}
N 160 -110 180 -110 {
lab=VDD}
N 180 -170 180 -110 {
lab=VDD}
N 160 -170 180 -170 {
lab=VDD}
N 160 150 180 150 {
lab=VSS}
N 180 150 180 210 {
lab=VSS}
N 160 210 180 210 {
lab=VSS}
N 170 30 170 120 {
lab=OUT}
N 160 120 170 120 {
lab=OUT}
N 110 150 120 150 {
lab=IN}
N 110 30 110 150 {
lab=IN}
N 170 -80 170 30 {
lab=OUT}
N 160 -80 170 -80 {
lab=OUT}
N 110 -110 120 -110 {
lab=IN}
N 110 -110 110 30 {
lab=IN}
N 90 30 110 30 {
lab=IN}
N 170 30 240 30 {
lab=OUT}
N 30 30 90 30 {
lab=IN}
C {devices/iopin.sym} 40 -50 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 40 -20 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 140 -110 0 0 {name=M1
L=1
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 30 30 0 0 {name=p3 lab=IN}
C {devices/opin.sym} 240 30 0 0 {name=p4 lab=OUT}
C {devices/lab_pin.sym} 160 -170 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 160 210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 140 150 0 0 {name=M2
L=1
W=10
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}

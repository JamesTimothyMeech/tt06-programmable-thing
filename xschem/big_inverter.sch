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
N 260 -170 260 -140 {
lab=VDD}
N 260 -110 280 -110 {
lab=VDD}
N 280 -170 280 -110 {
lab=VDD}
N 260 -170 280 -170 {
lab=VDD}
N 360 -170 360 -140 {
lab=VDD}
N 360 -110 380 -110 {
lab=VDD}
N 380 -170 380 -110 {
lab=VDD}
N 360 -170 380 -170 {
lab=VDD}
N 460 -170 460 -140 {
lab=VDD}
N 460 -110 480 -110 {
lab=VDD}
N 480 -170 480 -110 {
lab=VDD}
N 460 -170 480 -170 {
lab=VDD}
N 260 180 260 210 {
lab=VSS}
N 260 150 280 150 {
lab=VSS}
N 280 150 280 210 {
lab=VSS}
N 260 210 280 210 {
lab=VSS}
N 360 180 360 210 {
lab=VSS}
N 360 150 380 150 {
lab=VSS}
N 380 150 380 210 {
lab=VSS}
N 360 210 380 210 {
lab=VSS}
N 460 180 460 210 {
lab=VSS}
N 460 150 480 150 {
lab=VSS}
N 480 150 480 210 {
lab=VSS}
N 460 210 480 210 {
lab=VSS}
N 170 -80 260 -80 {
lab=OUT}
N 260 -80 360 -80 {
lab=OUT}
N 360 -80 460 -80 {
lab=OUT}
N 170 120 260 120 {
lab=OUT}
N 260 120 360 120 {
lab=OUT}
N 360 120 460 120 {
lab=OUT}
N 420 140 420 150 {
lab=IN}
N 320 140 420 140 {
lab=IN}
N 320 140 320 150 {
lab=IN}
N 220 140 320 140 {
lab=IN}
N 220 140 220 150 {
lab=IN}
N 120 140 220 140 {
lab=IN}
N 120 140 120 150 {
lab=IN}
N 420 -110 420 -100 {
lab=IN}
N 320 -100 420 -100 {
lab=IN}
N 320 -110 320 -100 {
lab=IN}
N 220 -100 320 -100 {
lab=IN}
N 220 -110 220 -100 {
lab=IN}
N 120 -100 220 -100 {
lab=IN}
N 120 -110 120 -100 {
lab=IN}
C {devices/iopin.sym} 40 -50 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 40 -20 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 140 -110 0 0 {name=M1
L=1
W=10
nf=1
mult=15
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
C {sky130_fd_pr/nfet_01v8.sym} 140 150 0 0 {name=M5
L=1
W=10
nf=1 
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 240 -110 0 0 {name=M2
L=1
W=10
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 340 -110 0 0 {name=M3
L=1
W=10
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 440 -110 0 0 {name=M4
L=1
W=10
nf=1
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 240 150 0 0 {name=M6
L=1
W=10
nf=1 
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 340 150 0 0 {name=M7
L=1
W=10
nf=1 
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 150 0 0 {name=M8
L=1
W=10
nf=1 
mult=15
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 260 -170 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 360 -170 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 460 -170 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 260 210 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 360 210 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 210 0 0 {name=p12 sig_type=std_logic lab=VSS}

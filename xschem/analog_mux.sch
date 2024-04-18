v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 650 -700 970 -700 { lab=VPWR}
N 810 -460 840 -460 {
lab=bus}
N 810 -360 810 -280 {
lab=bus}
N 810 -280 840 -280 {
lab=bus}
N 900 -460 930 -460 {
lab=mod}
N 930 -360 930 -280 {
lab=mod}
N 900 -280 930 -280 {
lab=mod}
N 870 -460 870 -420 {
lab=VPWR}
N 870 -420 970 -420 {
lab=VPWR}
N 870 -320 870 -280 {
lab=VGND}
N 870 -320 970 -320 {
lab=VGND}
N 970 -320 970 -140 {
lab=VGND}
N 810 -460 810 -360 {
lab=bus}
N 930 -460 930 -360 {
lab=mod}
N 650 -140 970 -140 { lab=VGND}
N 970 -700 970 -420 {
lab=VPWR}
N 570 -240 570 -140 {
lab=VGND}
N 570 -270 650 -270 {
lab=VGND}
N 650 -270 650 -140 {
lab=VGND}
N 570 -700 570 -560 {
lab=VPWR}
N 570 -530 650 -530 {
lab=VPWR}
N 650 -700 650 -530 {
lab=VPWR}
N 490 -530 530 -530 {
lab=tgon_n}
N 730 -520 730 -460 {
lab=tgon_n}
N 870 -520 870 -500 {
lab=tgon_n}
N 730 -520 870 -520 {
lab=tgon_n}
N 870 -240 870 -220 {
lab=tgon}
N 470 -700 570 -700 { lab=VPWR}
N 570 -700 650 -700 { lab=VPWR}
N 470 -140 570 -140 { lab=VGND}
N 570 -140 650 -140 { lab=VGND}
N 320 -530 360 -530 {
lab=ctrl}
N 320 -530 320 -420 {
lab=ctrl}
N 320 -420 320 -270 {
lab=ctrl}
N 670 -360 810 -360 {
lab=bus}
N 570 -320 570 -300 {
lab=tgon}
N 740 -220 870 -220 {
lab=tgon}
N 570 -320 740 -320 {
lab=tgon}
N 740 -320 740 -220 {
lab=tgon}
N 400 -700 470 -700 {
lab=VPWR}
N 400 -700 400 -560 {
lab=VPWR}
N 400 -460 400 -300 {
lab=tgon_n}
N 320 -270 360 -270 {
lab=ctrl}
N 490 -530 490 -460 {
lab=tgon_n}
N 490 -460 730 -460 {
lab=tgon_n}
N 490 -460 490 -270 {
lab=tgon_n}
N 490 -270 530 -270 {
lab=tgon_n}
N 400 -140 470 -140 {
lab=VGND}
N 400 -240 400 -140 {
lab=VGND}
N 400 -270 470 -270 {
lab=VGND}
N 470 -270 470 -140 {
lab=VGND}
N 400 -530 470 -530 {
lab=VPWR}
N 470 -700 470 -530 {
lab=VPWR}
N 290 -420 320 -420 {
lab=ctrl}
N 570 -500 570 -320 {
lab=tgon}
N 320 -700 400 -700 {
lab=VPWR}
N 400 -460 490 -460 {
lab=tgon_n}
N 280 -140 400 -140 {
lab=VGND}
N 400 -500 400 -460 {
lab=tgon_n}
N 1030 -200 1030 -140 {
lab=VGND}
N 970 -140 1030 -140 {
lab=VGND}
N 1030 -360 1030 -280 {
lab=mod}
N 1030 -220 1030 -200 {
lab=VGND}
N 1010 -250 1010 -140 {
lab=VGND}
N 1030 -370 1030 -360 {}
N 930 -370 1030 -370 {}
C {devices/iopin.sym} 320 -700 2 0 {name=p1 lab=VPWR}
C {devices/iopin.sym} 280 -140 2 0 {name=p2 lab=VGND}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Harald Pretl"}
C {devices/iopin.sym} 670 -360 0 1 {name=p7 lab=bus}
C {sky130_fd_pr/nfet_01v8.sym} 550 -270 0 0 {name=M4
L=0.15
W=1.5
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
C {sky130_fd_pr/pfet_01v8.sym} 550 -530 0 0 {name=M3
L=0.15
W=3
nf=2
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
C {devices/lab_wire.sym} 670 -460 0 0 {name=p3 sig_type=std_logic lab=tgon_n}
C {devices/lab_wire.sym} 670 -320 0 0 {name=p4 sig_type=std_logic lab=tgon}
C {devices/ipin.sym} 290 -420 2 1 {name=p5 lab=ctrl}
C {sky130_fd_pr/nfet_01v8.sym} 380 -270 0 0 {name=M2
L=0.15
W=1.5
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
C {sky130_fd_pr/pfet_01v8.sym} 380 -530 0 0 {name=M1
L=0.15
W=3
nf=2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 870 -260 3 0 {name=M6
L=0.35
W=31.5
nf=7
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 870 -480 1 0 {name=M5
L=0.35
W=94.5
nf=21
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1030 -250 0 0 {name=R1
L=10
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}

v {xschem version=3.4.5 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
T {ngspice_probe} 220 -460 0 0 0.2 0.2 {layer=4}
T {ngspice_probe} 250 -630 0 0 0.2 0.2 {layer=4}
N 180 -590 180 -530 { lab=#net1}
N 470 -580 470 -530 { lab=OUT}
N 470 -720 470 -680 { lab=VDD}
N 180 -720 470 -720 { lab=VDD}
N 180 -720 180 -680 { lab=VDD}
N 180 -470 180 -420 { lab=S}
N 410 -420 470 -420 { lab=S}
N 470 -470 470 -420 { lab=S}
N 240 -650 430 -650 { lab=#net1}
N 240 -650 240 -590 { lab=#net1}
N 180 -590 240 -590 { lab=#net1}
N 100 -500 140 -500 { lab=PLUS}
N 510 -500 550 -500 { lab=MINUS}
N 470 -580 630 -580 { lab=OUT}
N 320 -190 320 -160 { lab=VSS}
N 240 -220 280 -220 { lab=NBIAS}
N 410 -420 410 -370 { lab=S}
N 320 -330 320 -250 { lab=#net2}
N 320 -420 320 -390 { lab=S}
N 220 -650 240 -650 { lab=#net1}
N 180 -620 180 -590 { lab=#net1}
N 470 -620 470 -580 { lab=OUT}
N 320 -420 410 -420 { lab=S}
N 180 -420 320 -420 { lab=S}
N 390 -340 390 -310 {
lab=VSS}
N 390 -310 410 -310 {
lab=VSS}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 160 -500 0 0 {name=M1
L=0.3
W=2
body=GND
nf=1
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 490 -500 0 1 {name=M2
L=0.3
W=2
body=GND
nf=1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 450 -650 0 0 {name=M3
L=0.8
W=4
body=VDD
nf=1
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
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 200 -650 0 1 {name=M4
L=0.8
W=4
body=VDD
nf=1
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
C {devices/ipin.sym} 100 -500 0 0 {name=p4 sig_type=std_logic lab=PLUS}
C {devices/ipin.sym} 550 -500 0 1 {name=p1 sig_type=std_logic lab=MINUS}
C {devices/opin.sym} 630 -580 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {sky130_fd_pr/nfet3_01v8.sym} 300 -220 0 0 {name=M5
L=1.2
W=0.7
body=GND
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
C {devices/ipin.sym} 240 -220 0 0 {name=p3 sig_type=std_logic lab=NBIAS}
C {devices/ngspice_probe.sym} 230 -420 0 0 {name=r2}
C {devices/ngspice_probe.sym} 240 -590 0 0 {name=r1}
C {devices/ngspice_get_expr.sym} 470 -130 0 1 {name=r4 node="[format %.4g [expr [ngspice::get_node \{i(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[id])\}] * [ngspice::get_voltage s] ] ]"
descr="power [W]"}
C {devices/ngspice_get_value.sym} 470 -190 0 1 {name=r3 node=i(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[id])
descr="Id="}
C {devices/ngspice_probe.sym} 250 -220 0 0 {name=r5}
C {devices/ngspice_probe.sym} 110 -500 0 0 {name=r6}
C {devices/ngspice_probe.sym} 530 -500 0 0 {name=r7}
C {devices/lab_pin.sym} 470 -420 0 1 {name=l4 sig_type=std_logic lab=S}
C {devices/ngspice_get_value.sym} 470 -240 0 1 {name=r8 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 410 -340 0 0 {name=R1
W=0.35
L=50
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {devices/ngspice_get_value.sym} 450 -360 0 0 {name=r9 node=i(@b.$\{path\}xr1.xsky130_fd_pr__res_xhigh_po_0p35.brbody[i])
descr="I="}
C {devices/device_param_probe.sym} 460 -530 0 1 {name=r12
devicename=M2
devicemodel=nfet_01v8_lvt
deviceparam=gm}
C {devices/device_param_probe.sym} 170 -530 0 1 {name=r13
devicename=M1
devicemodel=nfet_01v8_lvt
deviceparam=gm}
C {devices/ngspice_get_value.sym} 280 -250 0 1 {name=r14 node=v(@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 280 -310 0 1 {name=r15 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 280 -350 0 1 {name=r11 node=@m.$\{path\}xm5.msky130_fd_pr__nfet_01v8[gmbs]
descr="gmbs="}
C {devices/ammeter.sym} 320 -360 0 0 {name=V5}
C {devices/lab_pin.sym} 330 -720 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 320 -160 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 840 510 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 390 -310 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 565 -720 0 0 {name=p5 lab=VDD}
C {devices/iopin.sym} 565 -690 0 0 {name=p6 lab=VSS}

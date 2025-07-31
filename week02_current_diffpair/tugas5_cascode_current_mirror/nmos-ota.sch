v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -260 260 -220 {lab=Iref}
N 440 -260 440 -220 {lab=#net1}
N 300 -190 400 -190 {lab=Iref}
N 240 -190 260 -190 {lab=VSS}
N 240 -190 240 -150 {lab=VSS}
N 240 -150 260 -150 {lab=VSS}
N 440 -190 460 -190 {lab=VSS}
N 460 -190 460 -150 {lab=VSS}
N 440 -150 460 -150 {lab=VSS}
N 260 -230 320 -230 {lab=Iref}
N 320 -230 320 -190 {lab=Iref}
N 260 -160 260 -130 {lab=VSS}
N 440 -160 440 -130 {lab=VSS}
N 320 -470 570 -470 {lab=VDD}
N 320 -470 320 -440 {lab=VDD}
N 570 -470 570 -440 {lab=VDD}
N 320 -410 320 -340 {lab=#net2}
N 570 -410 570 -340 {lab=VOUT}
N 360 -440 530 -440 {lab=#net2}
N 320 -390 380 -390 {lab=#net2}
N 380 -440 380 -390 {lab=#net2}
N 320 -280 570 -280 {lab=#net1}
N 440 -280 440 -260 {lab=#net1}
N 570 -380 650 -380 {lab=VOUT}
N 610 -310 630 -310 {lab=Vin2}
N 260 -310 280 -310 {lab=Vin1}
N 320 -310 570 -310 {lab=VSS}
N 440 -340 440 -310 {lab=VSS}
N 440 -500 440 -470 {lab=VDD}
C {symbols/nfet_03v3.sym} 280 -190 0 1 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 420 -190 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 340 -440 0 1 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 550 -440 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 300 -310 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 590 -310 0 1 {name=M6
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 440 -340 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -130 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -130 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -310 0 0 {name=p4 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 630 -310 0 1 {name=p5 sig_type=std_logic lab=Vin2}
C {lab_pin.sym} 260 -260 0 0 {name=p6 sig_type=std_logic lab=Iref}
C {lab_pin.sym} 440 -500 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 650 -380 0 1 {name=p8 sig_type=std_logic lab=VOUT}
C {iopin.sym} 790 -480 0 0 {name=p9 lab=VDD}
C {iopin.sym} 790 -450 0 0 {name=p10 lab=VSS}
C {opin.sym} 790 -420 0 0 {name=p11 lab=VOUT}
C {ipin.sym} 810 -390 0 0 {name=p12 lab=Vin1}
C {ipin.sym} 810 -360 0 0 {name=p13 lab=Vin2}
C {ipin.sym} 810 -330 0 0 {name=p14 lab=Iref}

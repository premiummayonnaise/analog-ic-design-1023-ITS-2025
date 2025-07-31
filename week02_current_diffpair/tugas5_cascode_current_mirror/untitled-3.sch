v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 540 -380 540 -340 {lab=#net1}
N 790 -380 790 -340 {lab=OUT}
N 580 -310 750 -310 {lab=#net1}
N 620 -360 620 -310 {lab=#net1}
N 540 -410 790 -410 {lab=VDD}
N 540 -440 790 -440 {lab=#net2}
N 660 -500 660 -440 {lab=#net2}
N 440 -530 620 -530 {lab=Ibias}
N 400 -500 400 -430 {lab=Ibias}
N 400 -460 480 -460 {lab=Ibias}
N 480 -530 480 -460 {lab=Ibias}
N 540 -370 620 -370 {lab=#net1}
N 620 -370 620 -360 {lab=#net1}
N 400 -560 660 -560 {lab=#net3}
N 540 -280 790 -280 {lab=VSS}
N 400 -560 400 -530 {lab=#net3}
N 660 -560 660 -530 {lab=#net3}
N 470 -410 500 -410 {lab=VINP}
N 830 -410 870 -410 {lab=VINN}
N 540 -310 540 -280 {lab=VSS}
N 790 -310 790 -280 {lab=VSS}
N 790 -360 850 -360 {lab=OUT}
C {symbols/pfet_03v3.sym} 810 -410 0 1 {name=M1
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
C {symbols/pfet_03v3.sym} 520 -410 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 770 -310 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 560 -310 0 1 {name=M4
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
C {symbols/pfet_03v3.sym} 640 -530 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 420 -530 0 1 {name=M6
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
C {lab_pin.sym} 400 -430 0 0 {name=p2 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 470 -410 0 0 {name=p4 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 870 -410 0 1 {name=p5 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 850 -360 0 1 {name=p7 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 670 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -410 0 0 {name=p3 sig_type=std_logic lab=VDD}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 290 -260 480 -260 {lab=VSS}
N 330 -290 440 -290 {lab=Ibias}
N 430 -380 620 -380 {lab=#net1}
N 480 -380 480 -320 {lab=#net1}
N 290 -380 290 -320 {lab=Ibias}
N 290 -350 370 -350 {lab=Ibias}
N 370 -350 370 -290 {lab=Ibias}
N 430 -500 430 -440 {lab=#net2}
N 620 -500 620 -440 {lab=OUT}
N 470 -530 580 -530 {lab=#net2}
N 430 -560 620 -560 {lab=VDD}
N 430 -470 520 -470 {lab=#net2}
N 520 -530 520 -470 {lab=#net2}
N 430 -410 620 -410 {lab=VSS}
N 350 -410 390 -410 {lab=VIN_N}
N 660 -410 710 -410 {lab=VIN_P}
N 430 -560 430 -530 {lab=VDD}
N 620 -560 620 -530 {lab=VDD}
N 290 -290 290 -260 {lab=VSS}
N 480 -290 480 -260 {lab=VSS}
N 530 -580 530 -560 {lab=VDD}
N 390 -260 390 -240 {lab=VSS}
N 620 -470 670 -470 {lab=OUT}
N 530 -430 530 -410 {lab=VSS}
C {symbols/nfet_06v0.sym} 460 -290 0 0 {name=M4
L=1u
W=2.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 310 -290 0 1 {name=M8
L=1u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 450 -530 0 1 {name=M9
L=1u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 640 -410 0 1 {name=M10
L=1u
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 410 -410 0 0 {name=M11
L=1u
W=20u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 600 -530 0 0 {name=M12
L=1u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 390 -240 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 530 -580 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 350 -410 0 0 {name=p18 sig_type=std_logic lab=VIN_N}
C {lab_pin.sym} 710 -410 0 1 {name=p19 sig_type=std_logic lab=VIN_P}
C {lab_pin.sym} 290 -380 0 0 {name=p20 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 670 -470 0 1 {name=p21 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 530 -430 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {ipin.sym} 870 -470 0 0 {name=p1 lab=VIN_N}
C {ipin.sym} 870 -430 0 0 {name=p2 lab=VIN_P}
C {opin.sym} 850 -390 0 0 {name=p3 lab=OUT}
C {iopin.sym} 850 -350 0 0 {name=p4 lab=VDD}
C {iopin.sym} 850 -310 0 0 {name=p5 lab=VSS}
C {ipin.sym} 870 -510 0 0 {name=p6 lab=Ibias}

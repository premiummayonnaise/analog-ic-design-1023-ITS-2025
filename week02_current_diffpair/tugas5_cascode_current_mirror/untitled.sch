v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 -230 520 -230 {lab=#net1}
N 340 -360 340 -290 {lab=#net2}
N 520 -360 520 -290 {lab=OUT}
N 380 -390 480 -390 {lab=#net2}
N 340 -420 520 -420 {lab=VDD}
N 340 -420 340 -390 {lab=VDD}
N 520 -420 520 -390 {lab=VDD}
N 520 -260 520 -230 {lab=#net1}
N 340 -260 340 -230 {lab=#net1}
N 430 -230 430 -190 {lab=#net1}
N 240 -130 430 -130 {lab=VSS}
N 240 -160 240 -130 {lab=VSS}
N 280 -160 300 -160 {lab=Ibias}
N 300 -190 300 -160 {lab=Ibias}
N 300 -160 390 -160 {lab=Ibias}
N 400 -390 400 -330 {lab=#net2}
N 340 -330 400 -330 {lab=#net2}
N 520 -330 610 -330 {lab=OUT}
N 240 -250 240 -190 {lab=Ibias}
N 300 -210 300 -190 {lab=Ibias}
N 240 -210 300 -210 {lab=Ibias}
N 340 -130 340 -100 {lab=VSS}
N 430 -450 430 -420 {lab=VDD}
N 280 -260 300 -260 {lab=VIN_P}
N 560 -260 580 -260 {lab=VIN_N}
N 430 -150 430 -130 {lab=VSS}
N 430 -160 430 -150 {lab=VSS}
C {lab_pin.sym} 240 -250 0 0 {name=p1 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 280 -260 0 0 {name=p2 sig_type=std_logic lab=VIN_P}
C {lab_pin.sym} 580 -260 0 1 {name=p3 sig_type=std_logic lab=VIN_N}
C {lab_pin.sym} 610 -330 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 430 -450 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 -100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {ipin.sym} 860 -460 0 0 {name=p7 lab=VIN_N}
C {ipin.sym} 860 -420 0 0 {name=p8 lab=VIN_P}
C {opin.sym} 840 -380 0 0 {name=p9 lab=OUT}
C {iopin.sym} 840 -340 0 0 {name=p10 lab=VDD}
C {iopin.sym} 840 -300 0 0 {name=p11 lab=VSS}
C {ipin.sym} 860 -500 0 0 {name=p12 lab=Ibias}
C {devices/code_shown.sym} 700 -100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {devices/code_shown.sym} 990 -340 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
ac dec 100 1 1G
let vdiff = VINP - VINN
let diff_gain = OUT/vdiff
plot db(diff_gain)
.endc
"}
C {symbols/pfet_03v3.sym} 360 -390 0 1 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 500 -390 0 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 540 -260 0 1 {name=M3
L=1u
W=10u
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
C {symbols/nfet_03v3.sym} 320 -260 0 0 {name=M4
L=1u
W=10u
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
C {symbols/nfet_03v3.sym} 260 -160 0 1 {name=M5
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 410 -160 0 0 {name=M6
L=1u
W=7.5u
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

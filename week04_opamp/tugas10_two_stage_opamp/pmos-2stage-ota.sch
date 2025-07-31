v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -310 350 -270 {lab=#net1}
N 600 -310 600 -270 {lab=#net2}
N 390 -240 560 -240 {lab=#net1}
N 430 -290 430 -240 {lab=#net1}
N 350 -340 600 -340 {lab=VDD}
N 350 -370 600 -370 {lab=#net3}
N 470 -430 470 -370 {lab=#net3}
N 210 -430 210 -360 {lab=Ibias}
N 210 -390 290 -390 {lab=Ibias}
N 350 -300 430 -300 {lab=#net1}
N 430 -300 430 -290 {lab=#net1}
N 210 -490 470 -490 {lab=VDD}
N 350 -210 600 -210 {lab=VSS}
N 210 -490 210 -460 {lab=VDD}
N 280 -340 310 -340 {lab=VINP}
N 640 -340 680 -340 {lab=VINN}
N 350 -240 350 -210 {lab=VSS}
N 600 -240 600 -210 {lab=VSS}
N 600 -290 660 -290 {lab=#net2}
N 470 -490 820 -490 {lab=VDD}
N 820 -490 820 -460 {lab=VDD}
N 600 -210 820 -210 {lab=VSS}
N 650 -240 780 -240 {lab=#net2}
N 650 -290 650 -240 {lab=#net2}
N 820 -240 820 -210 {lab=VSS}
N 250 -460 260 -460 {lab=Ibias}
N 260 -460 260 -410 {lab=Ibias}
N 260 -410 780 -410 {lab=Ibias}
N 780 -460 780 -410 {lab=Ibias}
N 430 -460 430 -410 {lab=Ibias}
N 290 -410 290 -390 {lab=Ibias}
N 470 -460 480 -460 {lab=VDD}
N 480 -490 480 -460 {lab=VDD}
N 810 -290 820 -290 {lab=OUT}
N 730 -290 750 -290 {lab=#net4}
N 660 -290 670 -290 {lab=#net2}
N 820 -290 880 -290 {lab=OUT}
N 820 -290 820 -270 {lab=OUT}
N 820 -320 820 -290 {lab=OUT}
N 820 -430 820 -380 {lab=OUT}
N 820 -380 820 -320 {lab=OUT}
N 780 -340 780 -310 {lab=VSS}
C {symbols/pfet_03v3.sym} 620 -340 0 1 {name=M1
L=1u
W=16.5u
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
C {symbols/pfet_03v3.sym} 330 -340 0 0 {name=M2
L=1u
W=16.5u
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
C {symbols/nfet_03v3.sym} 580 -240 0 0 {name=M3
L=2u
W=25u
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
C {symbols/nfet_03v3.sym} 370 -240 0 1 {name=M4
L=2u
W=25u
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
C {symbols/pfet_03v3.sym} 450 -460 0 0 {name=M5
L=2u
W=25u
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
C {symbols/pfet_03v3.sym} 230 -460 0 1 {name=M6
L=2u
W=25u
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
C {lab_pin.sym} 210 -360 0 0 {name=p2 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 280 -340 0 0 {name=p4 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 680 -340 0 1 {name=p5 sig_type=std_logic lab=VINN}
C {lab_wire.sym} 480 -210 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 470 -340 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 420 -490 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 800 -460 0 0 {name=M7
L=1u
W=4u
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
C {symbols/nfet_03v3.sym} 800 -240 0 0 {name=M8
L=1u
W=4u
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
C {vsource.sym} 1030 -370 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 1030 -470 0 0 {name=V2 value="dc 2 ac -1m" savecurrent=false}
C {vsource.sym} 1030 -570 0 0 {name=V3 value="dc 2 ac 1m" savecurrent=false}
C {vsource.sym} 1030 -270 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1030 -340 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1030 -440 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1030 -540 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1030 -400 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1030 -500 0 0 {name=p11 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 1030 -600 0 0 {name=p12 sig_type=std_logic lab=VINP}
C {gnd.sym} 1030 -240 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1030 -300 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {isource.sym} 1180 -570 0 0 {name=I0 value=100u}
C {lab_pin.sym} 1180 -540 0 0 {name=p14 sig_type=std_logic lab=I_bias}
C {devices/code_shown.sym} 1280 -610 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
ac dec 100 1 10G
let vdiff = VINP - VINN
let diff_gain = OUT/vdiff
plot db(diff_gain)
write n-5t-ota-diffgain.raw
.endc
"}
C {lab_pin.sym} 1180 -600 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 880 -290 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 1200 -340 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {symbols/cap_mim_1f0fF.sym} 700 -290 1 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 780 -290 3 1 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 780 -340 0 0 {name=p17 sig_type=std_logic lab=VSS}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -280 360 -240 {lab=#net1}
N 610 -280 610 -240 {lab=#net2}
N 400 -210 570 -210 {lab=#net1}
N 440 -260 440 -210 {lab=#net1}
N 360 -310 610 -310 {lab=VDD}
N 360 -340 610 -340 {lab=#net3}
N 480 -400 480 -340 {lab=#net3}
N 220 -400 220 -330 {lab=Ibias}
N 220 -360 300 -360 {lab=Ibias}
N 360 -270 440 -270 {lab=#net1}
N 440 -270 440 -260 {lab=#net1}
N 220 -460 480 -460 {lab=VDD}
N 360 -180 610 -180 {lab=VSS}
N 220 -460 220 -430 {lab=VDD}
N 290 -310 320 -310 {lab=VINP}
N 650 -310 690 -310 {lab=VINN}
N 360 -210 360 -180 {lab=VSS}
N 610 -210 610 -180 {lab=VSS}
N 610 -260 670 -260 {lab=#net2}
N 480 -460 830 -460 {lab=VDD}
N 830 -460 830 -430 {lab=VDD}
N 610 -180 830 -180 {lab=VSS}
N 660 -210 790 -210 {lab=#net2}
N 660 -260 660 -210 {lab=#net2}
N 830 -210 830 -180 {lab=VSS}
N 260 -430 270 -430 {lab=Ibias}
N 270 -430 270 -380 {lab=Ibias}
N 270 -380 790 -380 {lab=Ibias}
N 790 -430 790 -380 {lab=Ibias}
N 440 -430 440 -380 {lab=Ibias}
N 300 -380 300 -360 {lab=Ibias}
N 480 -430 490 -430 {lab=VDD}
N 490 -460 490 -430 {lab=VDD}
N 820 -260 830 -260 {lab=OUT}
N 740 -260 760 -260 {lab=#net4}
N 670 -260 680 -260 {lab=#net2}
N 830 -260 890 -260 {lab=OUT}
N 830 -260 830 -240 {lab=OUT}
N 830 -290 830 -260 {lab=OUT}
N 830 -400 830 -350 {lab=OUT}
N 830 -350 830 -290 {lab=OUT}
N 790 -310 790 -280 {lab=VSS}
C {symbols/pfet_03v3.sym} 630 -310 0 1 {name=M1
L=3u
W=30u
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
C {symbols/pfet_03v3.sym} 340 -310 0 0 {name=M2
L=3u
W=30u
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
C {symbols/nfet_03v3.sym} 590 -210 0 0 {name=M3
L=0.5u
W=8u
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
C {symbols/nfet_03v3.sym} 380 -210 0 1 {name=M4
L=0.5u
W=8u
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
C {symbols/pfet_03v3.sym} 460 -430 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 240 -430 0 1 {name=M6
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
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 220 -330 0 0 {name=p2 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 290 -310 0 0 {name=p4 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 690 -310 0 1 {name=p5 sig_type=std_logic lab=VINN}
C {lab_wire.sym} 490 -180 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 480 -310 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 430 -460 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 810 -430 0 0 {name=M7
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
C {symbols/nfet_03v3.sym} 810 -210 0 0 {name=M8
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
C {vsource.sym} 1040 -340 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 1040 -440 0 0 {name=V2 value="dc 1 ac -1m" savecurrent=false}
C {vsource.sym} 1040 -540 0 0 {name=V3 value="dc 1 ac 1m" savecurrent=false}
C {vsource.sym} 1040 -240 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1040 -310 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1040 -410 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1040 -510 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1040 -370 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -470 0 0 {name=p11 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 1040 -570 0 0 {name=p12 sig_type=std_logic lab=VINP}
C {gnd.sym} 1040 -210 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1040 -270 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {isource.sym} 1190 -540 0 0 {name=I0 value=10u}
C {lab_pin.sym} 1190 -510 0 0 {name=p14 sig_type=std_logic lab=I_bias}
C {devices/code_shown.sym} 1290 -580 0 0 {name=NGSPICE only_toplevel=true
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
C {lab_pin.sym} 1190 -570 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 890 -260 0 1 {name=p16 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 1210 -310 0 0 {name=MODELS1 only_toplevel=true
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
C {symbols/cap_mim_1f0fF.sym} 710 -260 1 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 790 -260 3 1 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 790 -310 0 0 {name=p17 sig_type=std_logic lab=VSS}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -220 460 -220 {lab=#net1}
N 280 -350 280 -280 {lab=#net2}
N 460 -350 460 -280 {lab=#net3}
N 320 -380 420 -380 {lab=#net2}
N 280 -410 460 -410 {lab=VDD}
N 280 -410 280 -380 {lab=VDD}
N 460 -410 460 -380 {lab=VDD}
N 370 -220 370 -180 {lab=#net1}
N 180 -150 180 -120 {lab=VSS}
N 340 -380 340 -320 {lab=#net2}
N 280 -320 340 -320 {lab=#net2}
N 180 -240 180 -180 {lab=Ibias}
N 180 -200 240 -200 {lab=Ibias}
N 370 -440 370 -410 {lab=VDD}
N 220 -250 240 -250 {lab=VINP}
N 500 -250 520 -250 {lab=VINN}
N 370 -140 370 -120 {lab=VSS}
N 370 -150 370 -140 {lab=VSS}
N 670 -150 670 -120 {lab=VSS}
N 670 -350 670 -180 {lab=OUT}
N 670 -310 710 -310 {lab=OUT}
N 460 -410 670 -410 {lab=VDD}
N 670 -410 670 -380 {lab=VDD}
N 220 -190 220 -150 {lab=Ibias}
N 220 -190 630 -190 {lab=Ibias}
N 630 -190 630 -150 {lab=Ibias}
N 330 -190 330 -150 {lab=Ibias}
N 240 -200 240 -190 {lab=Ibias}
N 180 -120 670 -120 {lab=VSS}
N 520 -380 630 -380 {lab=#net3}
N 520 -380 520 -310 {lab=#net3}
N 460 -310 530 -310 {lab=#net3}
N 660 -310 670 -310 {lab=OUT}
N 590 -310 600 -310 {lab=#net4}
N 630 -290 630 -260 {lab=VSS}
N 280 -250 460 -250 {lab=VSS}
C {lab_pin.sym} 180 -240 0 0 {name=p1 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 220 -250 0 0 {name=p2 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 520 -250 0 1 {name=p3 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 710 -310 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 370 -440 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 300 -380 0 1 {name=M1
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
C {symbols/pfet_03v3.sym} 440 -380 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 480 -250 0 1 {name=M3
L=1.5u
W=16.5u
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
C {symbols/nfet_03v3.sym} 260 -250 0 0 {name=M4
L=1.5u
W=16.5u
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
C {symbols/nfet_03v3.sym} 200 -150 0 1 {name=M5
L=2u
W=12.5u
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
C {symbols/nfet_03v3.sym} 350 -150 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 650 -150 0 0 {name=M7
L=0.5u
W=1u
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
C {symbols/pfet_03v3.sym} 650 -380 0 0 {name=M8
L=0.5u
W=1u
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
C {vsource.sym} 940 -330 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 940 -430 0 0 {name=V2 value="dc 3 ac -1" savecurrent=false}
C {vsource.sym} 940 -530 0 0 {name=V3 value="dc 3 ac 1" savecurrent=false}
C {vsource.sym} 940 -230 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 940 -300 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 940 -400 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 940 -500 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 940 -360 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 940 -460 0 0 {name=p11 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 940 -560 0 0 {name=p12 sig_type=std_logic lab=VINP}
C {gnd.sym} 940 -200 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 940 -260 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {isource.sym} 1090 -530 0 0 {name=I0 value=100u}
C {lab_pin.sym} 1090 -500 0 0 {name=p14 sig_type=std_logic lab=Ibias}
C {devices/code_shown.sym} 1050 -390 0 0 {name=NGSPICE only_toplevel=true
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
C {lab_pin.sym} 1090 -560 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 500 -120 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/cap_mim_1f5fF.sym} 560 -310 1 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 630 -310 3 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 630 -260 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1430 -380 0 0 {name=MODELS2 only_toplevel=true
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
C {lab_wire.sym} 370 -250 0 0 {name=p17 sig_type=std_logic lab=VSS}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 -230 520 -230 {lab=#net1}
N 340 -360 340 -290 {lab=#net2}
N 520 -360 520 -290 {lab=#net3}
N 380 -390 480 -390 {lab=#net2}
N 340 -420 520 -420 {lab=VDD}
N 340 -420 340 -390 {lab=VDD}
N 520 -420 520 -390 {lab=VDD}
N 430 -230 430 -190 {lab=#net1}
N 240 -160 240 -130 {lab=VSS}
N 400 -390 400 -330 {lab=#net2}
N 340 -330 400 -330 {lab=#net2}
N 240 -250 240 -190 {lab=Ibias}
N 240 -210 300 -210 {lab=Ibias}
N 430 -450 430 -420 {lab=VDD}
N 280 -260 300 -260 {lab=VINP}
N 560 -260 580 -260 {lab=VINN}
N 430 -150 430 -130 {lab=VSS}
N 430 -160 430 -150 {lab=VSS}
N 730 -160 730 -130 {lab=VSS}
N 730 -360 730 -190 {lab=OUT}
N 730 -320 770 -320 {lab=OUT}
N 520 -420 730 -420 {lab=VDD}
N 730 -420 730 -390 {lab=VDD}
N 280 -200 280 -160 {lab=Ibias}
N 280 -200 690 -200 {lab=Ibias}
N 690 -200 690 -160 {lab=Ibias}
N 390 -200 390 -160 {lab=Ibias}
N 300 -210 300 -200 {lab=Ibias}
N 240 -130 730 -130 {lab=VSS}
N 580 -390 690 -390 {lab=#net3}
N 580 -390 580 -320 {lab=#net3}
N 520 -320 590 -320 {lab=#net3}
N 720 -320 730 -320 {lab=OUT}
N 650 -320 660 -320 {lab=#net4}
N 690 -300 690 -270 {lab=VSS}
N 340 -260 520 -260 {lab=VSS}
C {lab_pin.sym} 240 -250 0 0 {name=p1 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 280 -260 0 0 {name=p2 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 580 -260 0 1 {name=p3 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 770 -320 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 430 -450 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 360 -390 0 1 {name=M1
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
C {symbols/pfet_03v3.sym} 500 -390 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 540 -260 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} 320 -260 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 260 -160 0 1 {name=M5
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
C {symbols/nfet_03v3.sym} 410 -160 0 0 {name=M6
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
C {symbols/nfet_03v3.sym} 710 -160 0 0 {name=M7
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
C {symbols/pfet_03v3.sym} 710 -390 0 0 {name=M8
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
C {vsource.sym} 1000 -340 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 1000 -440 0 0 {name=V2 value="dc 3 ac -1" savecurrent=false}
C {vsource.sym} 1000 -540 0 0 {name=V3 value="dc 3 ac 1" savecurrent=false}
C {vsource.sym} 1000 -240 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 1000 -310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -410 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -510 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -370 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1000 -470 0 0 {name=p11 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 1000 -570 0 0 {name=p12 sig_type=std_logic lab=VINP}
C {gnd.sym} 1000 -210 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1000 -270 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {isource.sym} 1150 -540 0 0 {name=I0 value=10u}
C {lab_pin.sym} 1150 -510 0 0 {name=p14 sig_type=std_logic lab=Ibias}
C {devices/code_shown.sym} 1110 -400 0 0 {name=NGSPICE only_toplevel=true
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
C {lab_pin.sym} 1150 -570 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 560 -130 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/cap_mim_1f5fF.sym} 620 -320 1 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 690 -320 3 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 690 -270 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 1490 -390 0 0 {name=MODELS2 only_toplevel=true
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
C {lab_wire.sym} 430 -260 0 0 {name=p17 sig_type=std_logic lab=VSS}

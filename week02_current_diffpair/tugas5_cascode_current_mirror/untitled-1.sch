v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {"0 SIN(0 1.5 1k)"} -180 -790 0 0 0.4 0.4 {}
T {"0 SIN(0 1.5 1k 0 0 180)"} -180 -760 0 0 0.4 0.4 {}
N -870 -280 -680 -280 {lab=VSS}
N -830 -310 -720 -310 {lab=Ibias}
N -730 -400 -540 -400 {lab=#net1}
N -680 -400 -680 -340 {lab=#net1}
N -870 -400 -870 -340 {lab=Ibias}
N -870 -370 -790 -370 {lab=Ibias}
N -790 -370 -790 -310 {lab=Ibias}
N -730 -520 -730 -460 {lab=#net2}
N -540 -520 -540 -460 {lab=OUT}
N -690 -550 -580 -550 {lab=#net2}
N -730 -580 -540 -580 {lab=VDD}
N -730 -490 -640 -490 {lab=#net2}
N -640 -550 -640 -490 {lab=#net2}
N -730 -430 -540 -430 {lab=VSS}
N -810 -430 -770 -430 {lab=VIN_N}
N -500 -430 -450 -430 {lab=VIN_P}
N -730 -580 -730 -550 {lab=VDD}
N -540 -580 -540 -550 {lab=VDD}
N -870 -310 -870 -280 {lab=VSS}
N -680 -310 -680 -280 {lab=VSS}
N -630 -600 -630 -580 {lab=VDD}
N -770 -280 -770 -260 {lab=VSS}
N -540 -490 -490 -490 {lab=OUT}
N -630 -450 -630 -430 {lab=VSS}
C {devices/code_shown.sym} -10 -560 0 0 {name=NGSPICE only_toplevel=true
value="
.control
ac dec 100 1 1G
let vdiff = VIN_P - VIN_N
let diff_gain = OUT/vdiff
plot dB(diff_gain)
write test_pfet_03v3.raw
.endc
"}
C {vsource.sym} -230 -400 0 0 {name=V1 value=6 savecurrent=false}
C {vsource.sym} -230 -500 0 0 {name=V2 value="DC 3 AC -0.5" savecurrent=fal}
C {vsource.sym} -230 -600 0 0 {name=V3 value="DC 3 AC 0.5" savecurrent=false}
C {vsource.sym} -230 -300 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} -230 -370 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -230 -470 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -230 -570 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -230 -430 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -230 -530 0 0 {name=p10 sig_type=std_logic lab=VIN_N}
C {lab_pin.sym} -230 -630 0 0 {name=p11 sig_type=std_logic lab=VIN_P}
C {gnd.sym} -230 -270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -230 -330 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {isource.sym} -110 -400 0 0 {name=I0 value=2u}
C {gnd.sym} -110 -370 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -110 -430 0 0 {name=p13 sig_type=std_logic lab=Ibias}
C {symbols/nfet_06v0.sym} -700 -310 0 0 {name=M1
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
C {symbols/nfet_06v0.sym} -850 -310 0 1 {name=M2
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
C {symbols/pfet_06v0.sym} -710 -550 0 1 {name=M3
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
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} -520 -430 0 1 {name=M5
L=1u
W=1u
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
C {symbols/nfet_06v0.sym} -750 -430 0 0 {name=M6
L=1u
W=1u
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
C {symbols/pfet_06v0.sym} -560 -550 0 0 {name=M7
L=1u
W=3.5u
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
C {lab_pin.sym} -770 -260 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -630 -600 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -810 -430 0 0 {name=p3 sig_type=std_logic lab=VIN_N}
C {lab_pin.sym} -450 -430 0 1 {name=p4 sig_type=std_logic lab=VIN_P}
C {lab_pin.sym} -870 -400 0 0 {name=p5 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} -490 -490 0 1 {name=p14 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -630 -450 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -10 -260 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}

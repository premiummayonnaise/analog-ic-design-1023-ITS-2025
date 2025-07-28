v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 370 -190 440 -190 {lab=Iref}
N 330 -240 330 -220 {lab=Iref}
N 480 -240 480 -220 {lab=#net1}
N 330 -230 380 -230 {lab=Iref}
N 380 -230 380 -190 {lab=Iref}
N 330 -160 330 -140 {lab=VSS}
N 480 -160 480 -140 {lab=VSS}
N 380 -230 560 -230 {lab=Iref}
N 560 -230 560 -190 {lab=Iref}
N 560 -190 610 -190 {lab=Iref}
N 650 -160 650 -140 {lab=VSS}
N 650 -250 650 -220 {lab=#net2}
N 480 -250 480 -240 {lab=#net1}
N 330 -250 330 -240 {lab=Iref}
N 480 -340 480 -310 {lab=VDD1}
N 650 -340 650 -310 {lab=VDD2}
N 130 -450 130 -430 {lab=Iref}
N 130 -370 130 -350 {lab=VSS}
N 130 -170 130 -150 {lab=VSS}
N 130 -90 130 -70 {lab=GND}
N 130 -230 130 -210 {lab=GND}
N 130 -310 130 -290 {lab=VDD1}
N 330 -190 330 -150 {lab=VSS}
N 480 -190 480 -150 {lab=VSS}
N 650 -190 650 -150 {lab=VSS}
N 130 -530 130 -510 {lab=GND}
N 130 -610 130 -590 {lab=VDD2}
C {symbols/nfet_03v3.sym} 460 -190 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 350 -190 0 1 {name=M2
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
C {isource.sym} 130 -400 2 0 {name=I0 value=0}
C {symbols/nfet_03v3.sym} 630 -190 0 0 {name=M3
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
C {ammeter.sym} 480 -280 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 650 -280 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 330 -140 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -140 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 650 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -250 0 0 {name=p4 sig_type=std_logic lab=Iref}
C {lab_pin.sym} 130 -450 0 0 {name=p5 sig_type=std_logic lab=Iref}
C {lab_pin.sym} 130 -350 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 130 -260 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 130 -120 0 0 {name=V2 value=3 savecurrent=false}
C {lab_pin.sym} 130 -170 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {gnd.sym} 130 -70 0 0 {name=l1 lab=GND}
C {gnd.sym} 130 -210 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 130 -310 0 0 {name=p8 sig_type=std_logic lab=VDD1}
C {devices/code_shown.sym} 770 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 760 -290 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
	dc V1 0 3.3 0.01 I0 0 1u 0.125u
	plot I(Vmeas1) I(Vmeas)
.endc
"}
C {lab_pin.sym} 480 -340 0 0 {name=p9 sig_type=std_logic lab=VDD1}
C {lab_pin.sym} 650 -340 0 0 {name=p10 sig_type=std_logic lab=VDD2}
C {vsource.sym} 130 -560 0 0 {name=V3 value=1.65 savecurrent=false}
C {gnd.sym} 130 -510 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 130 -610 0 0 {name=p11 sig_type=std_logic lab=VDD2}

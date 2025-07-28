v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 330 -310 330 -270 {lab=#net1}
N 370 -240 470 -240 {lab=#net1}
N 310 -240 330 -240 {lab=GND}
N 310 -240 310 -200 {lab=GND}
N 310 -200 330 -200 {lab=GND}
N 510 -240 530 -240 {lab=GND}
N 530 -240 530 -200 {lab=GND}
N 510 -200 530 -200 {lab=GND}
N 330 -280 390 -280 {lab=#net1}
N 390 -280 390 -240 {lab=#net1}
N 330 -210 330 -180 {lab=GND}
N 510 -210 510 -180 {lab=GND}
N 100 -200 100 -180 {lab=GND}
N 160 -200 160 -180 {lab=GND}
N 160 -280 160 -260 {lab=Vout}
N 100 -280 100 -260 {lab=Iref}
N 510 -370 510 -350 {lab=Vout}
N 330 -390 330 -370 {lab=Iref}
N 510 -290 510 -270 {lab=#net2}
C {gnd.sym} 510 -180 0 0 {name=l3 lab=GND}
C {gnd.sym} 330 -180 0 0 {name=l4 lab=GND}
C {symbols/nfet_03v3.sym} 350 -240 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 490 -240 0 0 {name=M2
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
C {ammeter.sym} 510 -320 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {isource.sym} 100 -230 2 0 {name=I0 value=0}
C {vsource.sym} 160 -230 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 100 -180 0 0 {name=l1 lab=GND}
C {gnd.sym} 160 -180 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 330 -390 0 0 {name=p1 sig_type=std_logic lab=Iref}
C {lab_pin.sym} 510 -370 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 100 -280 0 0 {name=p3 sig_type=std_logic lab=Iref}
C {lab_pin.sym} 160 -280 0 0 {name=p4 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} 60 -90 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 650 -240 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
	dc V2 0 3.3 0.01 I0 0 1u 0.125u
	plot -I(V2) I(Vmeas1)
.endc
"}
C {ammeter.sym} 330 -340 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}

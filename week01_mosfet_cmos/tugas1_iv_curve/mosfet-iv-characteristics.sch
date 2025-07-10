v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -320 110 -320 {lab=VGS}
N 150 -380 150 -350 {lab=VDS}
N 150 -290 150 -270 {lab=GND}
N 150 -320 190 -320 {lab=GND}
N 190 -320 190 -290 {lab=GND}
N 330 -290 330 -280 {lab=GND}
N 420 -290 420 -280 {lab=GND}
N 330 -360 330 -350 {lab=VGS}
N 420 -360 420 -350 {lab=VDS}
C {devices/code_shown.sym} 20 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {devices/code_shown.sym} 510 -400 0 0 {name=NGSPICE only_toplevel=true
value="

.control

	dc V2 0 3.3 0.01 V1 0 3.3 0.3
	plot -i(V2)

save all


.endc
"}
C {devices/title.sym} 170 -40 0 0 {name=l5 author="Dzaki Andriansyah - MOSFET IV Characteristics"}
C {vsource.sym} 330 -320 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 420 -320 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 150 -270 0 0 {name=l1 lab=GND}
C {gnd.sym} 190 -290 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 -280 0 0 {name=l3 lab=GND}
C {gnd.sym} 420 -280 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 70 -320 0 0 {name=p1 sig_type=std_logic lab=VGS}
C {lab_pin.sym} 150 -380 0 0 {name=p2 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 420 -360 0 0 {name=p3 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 330 -360 0 0 {name=p4 sig_type=std_logic lab=VGS}
C {symbols/nfet_03v3_dss.sym} 130 -320 0 0 {name=M1
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
model=nfet_03v3_dss
spiceprefix=X
}

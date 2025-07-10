v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -310 140 -300 {lab=GND}
N 70 -310 70 -300 {lab=GND}
N 250 -330 270 -330 {lab=VGS}
N 310 -300 310 -280 {lab=VDS}
N 310 -380 310 -360 {lab=GND}
N 140 -380 140 -370 {lab=VGS}
N 70 -380 70 -370 {lab=VDS}
N 310 -380 330 -380 {lab=GND}
N 310 -330 350 -330 {lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Dzaki Andriansyah - MOSFET IV Characteristics"}
C {devices/code_shown.sym} 20 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {devices/code_shown.sym} 510 -430 0 0 {name=NGSPICE only_toplevel=true
value="

.control
	dc V1 0 3.3 0.3 
	plot -i(V2)

save all


.endc
"}
C {gnd.sym} 330 -380 0 0 {name=l1 lab=GND}
C {gnd.sym} 350 -330 0 0 {name=l2 lab=GND}
C {vsource.sym} 140 -340 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 70 -340 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 140 -300 0 0 {name=l3 lab=GND}
C {gnd.sym} 70 -300 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 250 -330 0 0 {name=p5 sig_type=std_logic lab=VGS}
C {lab_pin.sym} 310 -280 0 0 {name=p6 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 70 -380 0 0 {name=p8 sig_type=std_logic lab=VDS}
C {lab_pin.sym} 140 -380 0 0 {name=p9 sig_type=std_logic lab=VGS}
C {symbols/pfet_05v0.sym} 290 -330 0 0 {name=M1
L=0.50u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}

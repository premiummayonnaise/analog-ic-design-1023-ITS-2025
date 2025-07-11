v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -410 280 -360 {lab=VOUT}
N 280 -510 280 -470 {lab=VDD}
N 280 -440 310 -440 {lab=VDD}
N 310 -480 310 -440 {lab=VDD}
N 280 -480 310 -480 {lab=VDD}
N 280 -300 280 -260 {lab=VSS}
N 280 -330 310 -330 {lab=VSS}
N 310 -330 310 -290 {lab=VSS}
N 280 -290 310 -290 {lab=VSS}
N 240 -440 240 -330 {lab=VIN}
N 210 -380 240 -380 {lab=VIN}
N 280 -380 310 -380 {lab=VOUT}
N 490 -330 490 -300 {lab=VSS}
N 560 -330 560 -300 {lab=VSS}
N 490 -420 490 -390 {lab=VIN}
N 560 -420 560 -390 {lab=VDD}
N 630 -420 630 -390 {lab=VSS}
N 630 -330 630 -300 {lab=GND}
C {devices/code_shown.sym} 760 -510 0 0 {name=NGSPICE only_toplevel=true
value= "

.control
dc V1 0 3.3 0.01 
plot v(VIN) v(VOUT)
.endc
"}
C {devices/code_shown.sym} 20 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {devices/title.sym} 160 -60 0 0 {name=l5 author="Dzaki Andriansyah - CMOS Inverter"}
C {lab_pin.sym} 280 -510 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -380 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 490 -420 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 280 -260 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -380 0 1 {name=p5 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 490 -300 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 490 -360 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 560 -360 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 630 -360 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 560 -420 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -300 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 630 -420 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gnd.sym} 630 -300 0 0 {name=l1 lab=GND}
C {symbols/nfet_03v3.sym} 260 -330 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 260 -440 0 0 {name=M2
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
model=pfet_03v3
spiceprefix=X
}

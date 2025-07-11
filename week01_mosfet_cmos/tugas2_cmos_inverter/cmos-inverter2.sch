v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -440 170 -390 {lab=VOUT}
N 130 -470 130 -360 {lab=VIN}
N 170 -530 170 -500 {lab=VDD}
N 170 -470 180 -470 {lab=VDD}
N 180 -510 180 -470 {lab=VDD}
N 170 -510 180 -510 {lab=VDD}
N 170 -330 170 -300 {lab=GND}
N 170 -360 180 -360 {lab=GND}
N 180 -360 180 -320 {lab=GND}
N 170 -320 180 -320 {lab=GND}
N 110 -410 130 -410 {lab=VIN}
N 170 -410 190 -410 {lab=VOUT}
N 330 -440 330 -430 {lab=VIN}
N 400 -440 400 -430 {lab=VDD}
N 330 -370 330 -350 {lab=GND}
N 400 -370 400 -350 {lab=GND}
C {devices/code_shown.sym} 500 -460 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

dc V1 0 10 0.01

plot VOUT VIN

.endc
"}
C {devices/title.sym} 180 -40 0 0 {name=l5 author="GlobalFoundries PDK Authors"}
C {symbols/nfet_10v0_asym.sym} 150 -360 0 0 {name=M1
L=0.60u
W=5u
nf=1
m=1
ad="'W * 1.48u'"
pd="'2 * (W + 1.48u)'"
as="'W * 0.48u'"
ps="'2 * (W + 0.48u)'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
model=nfet_10v0_asym
spiceprefix=X
}
C {symbols/pfet_10v0_asym.sym} 150 -470 0 0 {name=M2
L=0.6u
W=5u
nf=1
m=1
ad="'W * 1.78u'"
pd="'2 * (W + 1.78u)'"
as="'W * 0.48u'"
ps="'2 * (W + 0.48u)'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
model=pfet_10v0_asym
spiceprefix=X
}
C {lab_pin.sym} 190 -410 0 1 {name=p1 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 170 -530 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 110 -410 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {vsource.sym} 330 -400 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 400 -400 0 0 {name=V2 value=10 savecurrent=false}
C {lab_pin.sym} 330 -440 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 400 -440 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 520 -220 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {gnd.sym} 170 -300 0 0 {name=l1 lab=GND}
C {gnd.sym} 330 -350 0 0 {name=l2 lab=GND}
C {gnd.sym} 400 -350 0 0 {name=l3 lab=GND}

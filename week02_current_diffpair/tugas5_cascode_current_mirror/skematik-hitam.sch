v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -350 240 -300 {lab=Out}
N 200 -380 200 -270 {lab=In}
N 240 -490 240 -470 {lab=VDD}
N 240 -240 240 -220 {lab=VSS}
N 240 -320 270 -320 {lab=Out}
N 170 -320 200 -320 {lab=In}
N 240 -440 250 -440 {lab=VDD}
N 250 -480 250 -440 {lab=VDD}
N 240 -480 250 -480 {lab=VDD}
N 240 -270 250 -270 {lab=VSS}
N 250 -270 250 -230 {lab=VSS}
N 240 -230 250 -230 {lab=VSS}
N 200 -440 200 -380 {lab=In}
C {symbols/pfet_03v3.sym} 220 -440 0 0 {name=M1
L=0.28u
W=0.66u
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
C {symbols/nfet_03v3.sym} 220 -270 0 0 {name=M2
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
C {lab_pin.sym} 170 -320 0 0 {name=p1 sig_type=std_logic lab=In }
C {devices/code_shown.sym} 420 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {devices/code_shown.sym} 440 -360 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
dc V1 0 3.3 0.01
plot I(vmeas) Out
.endc
"}
C {lab_pin.sym} 240 -490 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -220 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {vsource.sym} 670 -210 0 0 {name=V1 value="PULSE(0 3.3 0 1n 1n 5n 20n)" savecurrent=false}
C {vsource.sym} 670 -320 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 790 -320 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 670 -240 0 0 {name=p5 sig_type=std_logic lab=In }
C {lab_pin.sym} 670 -350 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 670 -180 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -290 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -350 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gnd.sym} 790 -290 0 0 {name=l1 lab=GND}
C {ammeter.sym} 240 -380 0 1 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 270 -320 0 1 {name=p4 sig_type=std_logic lab=Out}

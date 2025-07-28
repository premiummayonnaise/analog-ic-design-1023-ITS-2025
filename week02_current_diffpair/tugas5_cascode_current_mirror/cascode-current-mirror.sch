v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 -400 340 -350 {lab=#net1}
N 520 -400 520 -350 {lab=#net2}
N 380 -430 480 -430 {lab=#net3}
N 520 -520 520 -460 {lab=#net4}
N 340 -350 340 -310 {lab=#net1}
N 520 -350 520 -310 {lab=#net2}
N 320 -430 340 -430 {lab=#net1}
N 320 -430 320 -390 {lab=#net1}
N 320 -390 340 -390 {lab=#net1}
N 520 -430 540 -430 {lab=#net2}
N 540 -430 540 -390 {lab=#net2}
N 520 -390 540 -390 {lab=#net2}
N 340 -490 340 -460 {lab=#net3}
N 180 -570 180 -550 {lab=#net5}
N 180 -570 340 -570 {lab=#net5}
N 340 -570 340 -550 {lab=#net5}
N 180 -490 180 -480 {lab=GND}
N 520 -620 520 -590 {lab=#net6}
N 520 -620 640 -620 {lab=#net6}
N 640 -620 640 -570 {lab=#net6}
N 520 -530 520 -520 {lab=#net4}
N 640 -510 640 -500 {lab=GND}
N 340 -470 400 -470 {lab=#net3}
N 400 -470 400 -430 {lab=#net3}
N 380 -280 480 -280 {lab=#net1}
N 320 -280 340 -280 {lab=GND}
N 320 -280 320 -240 {lab=GND}
N 320 -240 340 -240 {lab=GND}
N 520 -280 540 -280 {lab=GND}
N 540 -280 540 -240 {lab=GND}
N 520 -240 540 -240 {lab=GND}
N 340 -320 400 -320 {lab=#net1}
N 400 -320 400 -280 {lab=#net1}
N 340 -250 340 -220 {lab=GND}
N 520 -250 520 -220 {lab=GND}
C {symbols/nfet_03v3.sym} 360 -430 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} 500 -430 0 0 {name=M4
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
C {gnd.sym} 180 -480 0 0 {name=l1 lab=GND}
C {vsource.sym} 640 -540 0 0 {name=V2 value=3.3 savecurrent=false}
C {ammeter.sym} 520 -560 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {gnd.sym} 640 -500 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 650 -240 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
	dc V2 0 3.3 0.01 I0 0 1u 0.125u
	plot I(Vmeas) I(Vmeas1)
.endc
"}
C {devices/code_shown.sym} 50 -100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {ammeter.sym} 340 -520 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {gnd.sym} 520 -220 0 0 {name=l3 lab=GND}
C {gnd.sym} 340 -220 0 0 {name=l4 lab=GND}
C {isource.sym} 180 -520 2 0 {name=I0 value=0}
C {symbols/nfet_03v3.sym} 360 -280 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 500 -280 0 0 {name=M2
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

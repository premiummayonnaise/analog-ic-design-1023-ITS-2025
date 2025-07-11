v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 310 -260 310 -220 {lab=VOUT}
N 270 -290 270 -190 {lab=xxx}
N 310 -240 330 -240 {lab=VOUT}
N 250 -240 270 -240 {lab=xxx}
N 310 -340 310 -320 {lab=VDD}
N 310 -160 310 -140 {lab=VSS}
C {devices/title.sym} 160 -40 0 0 {name=l5 author="CMOS Inverter - "}
C {symbols/pfet_05v0.sym} 290 -290 0 0 {name=M1
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
C {symbols/nfet_05v0.sym} 290 -190 0 0 {name=M2
L=0.60u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {iopin.sym} 310 -340 0 0 {name=p1 lab=VDD}
C {iopin.sym} 310 -140 0 0 {name=p2 lab=VSS}
C {ipin.sym} 250 -240 0 0 {name=p3 lab=VIN}
C {opin.sym} 330 -240 0 0 {name=p4 lab=VOUT}

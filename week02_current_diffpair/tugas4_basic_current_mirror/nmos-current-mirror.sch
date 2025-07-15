v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Iout = Iref (W2/L2)/(W1/L1)} 180 -510 0 0 0.4 0.4 {}
T {tran 0.1u 100ms} 720 -530 0 0 0.4 0.4 {}
T {name=V2 value="PULSE(0 1.8 0 5ms 5ms 20ms 20ms)" savecurrent=false} 720 -490 0 0 0.4 0.4 {}
N 310 -170 360 -170 {lab=#net1}
N 250 -170 270 -170 {lab=VSS}
N 250 -170 250 -130 {lab=VSS}
N 250 -130 400 -130 {lab=VSS}
N 400 -140 400 -130 {lab=VSS}
N 270 -140 270 -130 {lab=VSS}
N 400 -170 420 -170 {lab=VSS}
N 420 -170 420 -130 {lab=VSS}
N 400 -130 420 -130 {lab=VSS}
N 270 -230 330 -230 {lab=#net1}
N 330 -230 330 -170 {lab=#net1}
N 400 -240 400 -200 {lab=#net2}
N 270 -220 270 -200 {lab=#net1}
N 270 -250 270 -230 {lab=#net1}
N 270 -230 270 -220 {lab=#net1}
N 330 -130 330 -100 {lab=VSS}
N 270 -410 270 -390 {lab=VDD}
N 400 -330 400 -300 {lab=VOUT}
N 600 -400 600 -380 {lab=GND}
N 560 -250 560 -240 {lab=VSS}
N 560 -240 630 -240 {lab=VSS}
N 630 -250 630 -240 {lab=VSS}
N 560 -330 560 -310 {lab=VDD}
N 630 -330 630 -310 {lab=VOUT}
N 600 -480 600 -460 {lab=VSS}
N 600 -240 600 -220 {lab=VSS}
N 270 -330 270 -310 {lab=#net3}
C {sky130_fd_pr/nfet_01v8.sym} 290 -170 0 1 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 -170 0 0 {name=M2
W=2
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 330 -100 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 270 -410 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -330 0 0 {name=p3 sig_type=std_logic lab=VOUT}
C {isource.sym} 270 -360 0 0 {name=I0 value=1u}
C {vsource.sym} 560 -280 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 630 -280 0 0 {name=V2 value="PULSE(0 1.8 0 5ms 5ms 20ms 20ms)" savecurrent=false}
C {vsource.sym} 600 -430 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 600 -380 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 600 -480 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -330 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 630 -330 0 0 {name=p7 sig_type=std_logic lab=VOUT}
C {sky130_fd_pr/corner.sym} 530 -160 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} 680 -160 0 0 {name=ngspice only_toplevel=false value="

	.param Wm2=1u

.control
	dc V2 0 0.9 0.01
	
	plot I(Vmeas)
	
	
saveall
.endc
"}
C {ammeter.sym} 400 -270 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 600 -220 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {ammeter.sym} 270 -280 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}

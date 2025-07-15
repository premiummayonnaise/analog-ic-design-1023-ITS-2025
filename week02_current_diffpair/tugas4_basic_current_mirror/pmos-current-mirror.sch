v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -290 340 -290 {lab=VDD}
N 640 -450 640 -430 {lab=GND}
N 500 -450 500 -440 {lab=VSS}
N 500 -440 570 -440 {lab=VSS}
N 570 -450 570 -440 {lab=VSS}
N 500 -530 500 -510 {lab=VDD}
N 570 -530 570 -510 {lab=VOUT}
N 640 -530 640 -510 {lab=VSS}
N 540 -440 540 -420 {lab=VSS}
N 220 -290 280 -290 {lab=#net1}
N 150 -290 180 -290 {lab=VDD}
N 150 -330 150 -290 {lab=VDD}
N 150 -330 180 -330 {lab=VDD}
N 180 -330 180 -320 {lab=VDD}
N 320 -330 320 -320 {lab=VDD}
N 320 -330 350 -330 {lab=VDD}
N 350 -330 350 -290 {lab=VDD}
N 340 -290 350 -290 {lab=VDD}
N 180 -260 180 -220 {lab=#net1}
N 180 -160 180 -110 {lab=VSS}
N 320 -260 320 -200 {lab=#net2}
N 320 -140 320 -110 {lab=VOUT}
N 180 -400 180 -330 {lab=VDD}
N 320 -400 320 -330 {lab=VDD}
N 180 -240 240 -240 {lab=#net1}
N 240 -290 240 -240 {lab=#net1}
C {sky130_fd_pr/corner.sym} 460 -310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} 610 -310 0 0 {name=ngspice only_toplevel=false value="

	.param Wm2=1u

.control
	tran 0.1u 100ms
	
	plot I(Vmeas)
	
	
saveall
.endc
"}
C {lab_pin.sym} 180 -110 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {isource.sym} 180 -190 0 0 {name=I0 value=1u}
C {vsource.sym} 500 -480 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 570 -480 0 0 {name=V2 
value="PULSE(0 1.8 0 1ms 1ms 1ms 20ms)"
savecurrent=false}
C {vsource.sym} 640 -480 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 640 -430 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 640 -530 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 -530 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 -530 0 0 {name=p7 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 540 -420 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 300 -290 0 0 {name=M1
W=3
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 200 -290 0 1 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {ammeter.sym} 320 -170 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 320 -110 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 180 -400 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -400 0 0 {name=p8 sig_type=std_logic lab=VDD}

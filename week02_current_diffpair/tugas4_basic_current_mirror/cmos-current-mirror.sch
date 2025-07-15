v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 330 -490 380 -490 {lab=#net1}
N 270 -490 290 -490 {lab=VSS}
N 270 -490 270 -450 {lab=VSS}
N 270 -450 420 -450 {lab=VSS}
N 420 -460 420 -450 {lab=VSS}
N 290 -460 290 -450 {lab=VSS}
N 420 -490 440 -490 {lab=VSS}
N 440 -490 440 -450 {lab=VSS}
N 420 -450 440 -450 {lab=VSS}
N 290 -550 350 -550 {lab=#net1}
N 350 -550 350 -490 {lab=#net1}
N 420 -560 420 -520 {lab=#net2}
N 290 -540 290 -520 {lab=#net1}
N 290 -570 290 -550 {lab=#net1}
N 290 -550 290 -540 {lab=#net1}
N 350 -450 350 -420 {lab=VSS}
N 290 -730 290 -710 {lab=VDD}
N 420 -650 420 -620 {lab=VOUT}
N 290 -650 290 -630 {lab=#net3}
N 460 -260 510 -260 {lab=#net4}
N 400 -260 420 -260 {lab=VSS}
N 400 -260 400 -220 {lab=VSS}
N 400 -220 550 -220 {lab=VSS}
N 550 -230 550 -220 {lab=VSS}
N 420 -230 420 -220 {lab=VSS}
N 550 -260 570 -260 {lab=VSS}
N 570 -260 570 -220 {lab=VSS}
N 550 -220 570 -220 {lab=VSS}
N 420 -320 480 -320 {lab=#net4}
N 480 -320 480 -260 {lab=#net4}
N 550 -330 550 -290 {lab=#net5}
N 420 -310 420 -290 {lab=#net4}
N 420 -340 420 -320 {lab=#net4}
N 420 -320 420 -310 {lab=#net4}
N 480 -220 480 -190 {lab=VSS}
N 420 -430 420 -410 {lab=VSS}
N 550 -400 550 -370 {lab=#net6}
N 700 -610 720 -610 {lab=VDD}
N 600 -610 660 -610 {lab=#net6}
N 530 -610 560 -610 {lab=VOUT}
N 530 -650 530 -610 {lab=VOUT}
N 530 -650 560 -650 {lab=VOUT}
N 560 -650 560 -640 {lab=VOUT}
N 700 -650 700 -640 {lab=VDD}
N 700 -650 730 -650 {lab=VDD}
N 730 -650 730 -610 {lab=VDD}
N 720 -610 730 -610 {lab=VDD}
N 560 -580 560 -540 {lab=#net6}
N 560 -480 560 -430 {lab=#net6}
N 700 -580 700 -520 {lab=#net7}
N 700 -460 700 -430 {lab=VOUT}
N 560 -720 560 -650 {lab=VOUT}
N 700 -720 700 -650 {lab=VDD}
N 560 -560 620 -560 {lab=#net6}
N 620 -610 620 -560 {lab=#net6}
N 420 -450 420 -430 {lab=VSS}
N 420 -410 420 -350 {lab=VSS}
N 560 -430 560 -420 {lab=#net6}
N 550 -420 560 -420 {lab=#net6}
N 550 -420 550 -400 {lab=#net6}
N 560 -540 560 -480 {lab=#net6}
N 900 -430 900 -410 {lab=GND}
N 860 -280 860 -270 {lab=VSS}
N 860 -270 930 -270 {lab=VSS}
N 930 -280 930 -270 {lab=VSS}
N 860 -360 860 -340 {lab=VDD}
N 930 -360 930 -340 {lab=VOUT}
N 900 -510 900 -490 {lab=VSS}
N 900 -270 900 -250 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 310 -490 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 400 -490 0 0 {name=M2
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
C {lab_pin.sym} 350 -420 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 290 -730 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 -650 0 0 {name=p3 sig_type=std_logic lab=VOUT}
C {isource.sym} 290 -680 0 0 {name=I0 value=1u}
C {ammeter.sym} 420 -590 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 290 -600 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/nfet_01v8.sym} 440 -260 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 530 -260 0 0 {name=M4
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
C {lab_pin.sym} 480 -190 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {ammeter.sym} 550 -360 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 420 -370 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {sky130_fd_pr/pfet_01v8.sym} 680 -610 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 580 -610 0 1 {name=M6
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
C {ammeter.sym} 700 -490 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 700 -430 0 0 {name=p8 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 560 -720 0 0 {name=p9 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 700 -720 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} 840 -680 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} 990 -680 0 0 {name=ngspice only_toplevel=false value="

	.param Wm2=1u

.control
	dc V2 0 1.8 0.01	
	plot I(Vmeas)
	plot I(Vmeas2)
	plot I(Vmeas4)
	
saveall
.endc
"}
C {vsource.sym} 860 -310 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 930 -310 0 0 {name=V2 value=1.8 savecurrent=false}
C {vsource.sym} 900 -460 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 900 -410 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 900 -510 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -360 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 930 -360 0 0 {name=p7 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 900 -250 0 0 {name=p11 sig_type=std_logic lab=VSS}

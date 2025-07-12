v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 460 -290 460 -250 {lab=VOUT}
N 420 -320 420 -220 {lab=VIN}
N 460 -460 460 -450 {lab=VDD}
N 460 -120 460 -100 {lab=GND}
N 400 -270 420 -270 {lab=VIN}
N 460 -270 480 -270 {lab=VOUT}
N 460 -470 460 -460 {lab=VDD}
N 80 -370 80 -350 {lab=GND}
N 80 -230 80 -210 {lab=GND}
N 80 -450 80 -430 {lab=VDD}
N 80 -310 80 -290 {lab=VIN}
N 480 -270 570 -270 {lab=VOUT}
N 460 -380 460 -360 {lab=VOUT}
N 460 -450 460 -440 {lab=VDD}
N 460 -190 460 -180 {lab=VOUT}
N 420 -220 420 -150 {lab=VIN}
N 420 -410 420 -320 {lab=VIN}
N 460 -300 460 -290 {lab=VOUT}
N 460 -360 460 -300 {lab=VOUT}
N 460 -250 460 -190 {lab=VOUT}
C {lab_pin.sym} 460 -470 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -270 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {vsource.sym} 80 -260 0 0 {name=V1 

value= "PULSE( 0 1.8 0 1ms 1ms 2ms 5ms)"


savecurrent=false}
C {vsource.sym} 80 -400 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 460 -100 0 0 {name=l1 lab=GND}
C {gnd.sym} 80 -210 0 0 {name=l2 lab=GND}
C {gnd.sym} 80 -350 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 80 -450 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 -310 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {sky130_fd_pr/corner.sym} 180 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code_shown.sym} 650 -340 0 0 {name=tran-simulation only_toplevel=true value="

.control
	tran 1ms 20ms
	plot VIN VOUT

save all

.endc
"}
C {sky130_fd_pr/nfet3_01v8.sym} 440 -150 0 0 {name=M1
W=1
L=0.15
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} 440 -410 0 0 {name=M2
W=1
L=0.15
body=VDD
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
C {lab_pin.sym} 570 -270 0 1 {name=p1 sig_type=std_logic lab=VOUT}

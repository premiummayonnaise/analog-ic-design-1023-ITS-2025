v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 790 -370 810 -370 {}
L 4 510 -410 530 -410 {}
L 4 510 -390 530 -390 {}
L 4 510 -370 530 -370 {}
L 7 790 -410 810 -410 {}
L 7 790 -390 810 -390 {}
B 5 807.5 -412.5 812.5 -407.5 {name=VDD dir=inout}
B 5 807.5 -392.5 812.5 -387.5 {name=VSS dir=inout}
B 5 807.5 -372.5 812.5 -367.5 {name=VOUT dir=out}
B 5 507.5 -412.5 512.5 -407.5 {name=Vin1 dir=in}
B 5 507.5 -392.5 512.5 -387.5 {name=Vin2 dir=in}
B 5 507.5 -372.5 512.5 -367.5 {name=Iref dir=in}
P 4 5 790 -420 530 -420 530 -360 790 -360 790 -420 {}
T {@symname} 606 -396 0 0 0.3 0.3 {}
T {@name} 795 -432 0 0 0.2 0.2 {}
T {VDD} 785 -414 0 1 0.2 0.2 {}
T {VSS} 785 -394 0 1 0.2 0.2 {}
T {VOUT} 785 -374 0 1 0.2 0.2 {}
T {Vin1} 535 -414 0 0 0.2 0.2 {}
T {Vin2} 535 -394 0 0 0.2 0.2 {}
T {Iref} 535 -374 0 0 0.2 0.2 {}
N 810 -370 830 -370 {lab=#net1}
N 810 -390 830 -390 {lab=VSS}
N 810 -410 830 -410 {lab=VDD}
N 490 -410 510 -410 {lab=Vin1}
N 490 -390 510 -390 {lab=Vin2}
N 490 -370 510 -370 {lab=Iref}
N 100 -350 100 -330 {lab=GND}
N 100 -430 100 -410 {lab=VSS}
N 240 -420 240 -400 {lab=VDD}
N 240 -340 240 -320 {lab=VSS}
N 90 -250 90 -230 {lab=Vin2}
N 90 -170 90 -150 {lab=VSS}
N 350 -430 350 -410 {lab=Iref}
N 350 -350 350 -330 {lab=GND}
N 90 -120 90 -100 {lab=Vin1}
N 90 -40 90 -30 {lab=VSS}
N 90 -30 90 -20 {lab=VSS}
N 830 -310 850 -310 {lab=OUT}
C {isource.sym} 350 -380 0 0 {name=I0 value=1m}
C {vsource.sym} 90 -70 0 0 {name=V1 value="PULSE(0 3.3 1ns 1ms 1ms 2ms 8ms)" savecurrent=false}
C {vsource.sym} 90 -200 0 0 {name=V2 value="PULSE(0 3 1ns 1ms 1ms 2ms 4ms)"  savecurrent=false}
C {vsource.sym} 240 -370 0 0 {name=V3 value=3.3 savecurrent=false}
C {vsource.sym} 100 -380 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 490 -410 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 490 -390 0 0 {name=p2 sig_type=std_logic lab=Vin2
}
C {lab_pin.sym} 490 -370 0 0 {name=p3 sig_type=std_logic lab=Iref}
C {lab_pin.sym} 830 -410 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 830 -390 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 850 -310 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 100 -430 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -420 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -250 0 0 {name=p9 sig_type=std_logic lab=Vin2}
C {lab_pin.sym} 90 -120 0 0 {name=p10 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 350 -430 0 0 {name=p11 sig_type=std_logic lab=Iref}
C {gnd.sym} 100 -330 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 90 -150 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -320 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -20 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {gnd.sym} 350 -330 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 430 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 910 -150 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
	tran 10ns 24ms UIC
	plot I(VOUT)
.endc
"}
C {ammeter.sym} 830 -340 0 0 {name=Vmeas savecurrent=true spice_ignore=0}

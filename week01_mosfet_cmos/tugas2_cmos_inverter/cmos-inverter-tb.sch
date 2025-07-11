v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 460 -190 460 -170 {lab=VSS}
N 540 -190 540 -170 {lab=VSS}
N 610 -190 610 -170 {lab=GND}
N 460 -270 460 -250 {lab=IN}
N 540 -270 540 -250 {lab=VDD}
N 610 -270 610 -250 {lab=VSS}
N 270 -240 320 -240 {lab=OUT}
N 320 -270 320 -240 {lab=OUT}
N 220 -300 220 -270 {lab=VDD}
N 220 -210 220 -170 {lab=VSS}
N 160 -240 190 -240 {lab=IN}
C {devices/code_shown.sym} 110 -430 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {devices/code_shown.sym} 700 -360 0 0 {name=NGSPICE only_toplevel=true
value="

.control
	dc V1 0 3.3 0.01
	plot v(OUT) v(IN)
	

save all


.endc
"}
C {devices/title.sym} 170 -50 0 0 {name=l5 author="Dzaki Andriansyah - CMOS Inverter"}
C {vsource.sym} 460 -220 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 540 -220 0 0 {name=V2 value=5 savecurrent=false}
C {vsource.sym} 610 -220 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 460 -270 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_pin.sym} 540 -270 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 610 -270 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -170 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -170 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {gnd.sym} 610 -170 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 320 -270 0 0 {name=p6 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 220 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -170 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -240 0 0 {name=p10 sig_type=std_logic lab=IN}

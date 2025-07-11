v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -370 110 -340 {lab=GND}
N 260 -240 260 -230 {lab=GND}
N 330 -240 330 -230 {lab=GND}
N 150 -390 170 -390 {lab=VOUT}
N 50 -390 70 -390 {lab=VIN}
N 120 -460 120 -430 {lab=VDD}
N 260 -320 260 -300 {lab=VIN}
N 330 -320 330 -300 {lab=VDD}
N 100 -410 120 -430 {lab=VDD}
N 100 -410 110 -410 {lab=VDD}
C {cmos-inverter3.sym} -50 -240 0 0 {name=x1}
C {devices/code_shown.sym} 490 -490 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

dc V1 0 5 0.01

plot VOUT VIN

.endc
"}
C {devices/code_shown.sym} 510 -250 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="cmos-inverter-testbench"}
C {vsource.sym} 260 -270 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 330 -270 0 0 {name=V2 value=5 savecurrent=false}
C {gnd.sym} 110 -340 0 0 {name=l1 lab=GND}
C {gnd.sym} 260 -230 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 -230 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 120 -460 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 50 -390 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 330 -320 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 170 -390 0 1 {name=p6 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 260 -320 0 0 {name=p9 sig_type=std_logic lab=VIN}

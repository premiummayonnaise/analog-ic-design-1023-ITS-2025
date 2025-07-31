v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -340 500 -340 {lab=OUT}
N 500 -390 500 -340 {lab=OUT}
N 500 -390 510 -390 {lab=OUT}
N 510 -390 570 -390 {lab=OUT}
C {vsource.sym} 710 -240 0 0 {name=V1 value=6 savecurrent=false}
C {vsource.sym} 710 -340 0 0 {name=V2 value="dc 0.75" savecurrent=false}
C {vsource.sym} 710 -440 0 0 {name=V3 value="PULSE(0 6 0 10n 10n 20n 1u)" savecurrent=false}
C {vsource.sym} 710 -140 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 710 -210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -410 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -270 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 710 -470 0 0 {name=p10 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 710 -370 0 0 {name=p11 sig_type=std_logic lab=VINP}
C {gnd.sym} 710 -110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 710 -170 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {isource.sym} 830 -240 0 0 {name=I0 value=2u}
C {gnd.sym} 570 -330 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 830 -210 0 0 {name=p13 sig_type=std_logic lab=I_bias}
C {devices/code_shown.sym} 960 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 960 -480 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10n 5u
meas tran slew_rate param (v(out)[end] - v(out)[start]) / (time[end] - time[start])
meas tran v_start find v(out) when time=1u
meas tran v_end find v(out) when time=1.1u
meas tran slew_rate param (v_end - v_start) / (1.1u - 1u)
plot slew_rate
.endc
"}
C {5t-ota.sym} 330 -320 0 0 {name=x1}
C {lab_pin.sym} 180 -340 0 0 {name=p1 sig_type=std_logic lab=I_bias}
C {lab_pin.sym} 180 -320 0 0 {name=p2 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 180 -300 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 570 -390 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 480 -320 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -300 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {capa.sym} 570 -360 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 830 -270 0 0 {name=p15 sig_type=std_logic lab=VDD}

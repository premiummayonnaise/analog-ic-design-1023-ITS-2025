v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 -340 410 -340 {lab=OUT}
N 410 -390 410 -340 {lab=OUT}
N 410 -390 420 -390 {lab=OUT}
N 420 -390 510 -390 {lab=OUT}
N 480 -320 480 -310 {lab=GND}
N 480 -390 480 -380 {lab=OUT}
C {vsource.sym} 620 -240 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 620 -340 0 0 {name=V2 value="dc 0.75" savecurrent=false}
C {vsource.sym} 620 -440 0 0 {name=V3 value="PULSE(0 1.5 0 1n 1n 2u 4u)" savecurrent=false}
C {vsource.sym} 620 -140 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 620 -210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -410 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -270 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 620 -370 0 0 {name=p10 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 620 -470 0 0 {name=p11 sig_type=std_logic lab=VINP}
C {gnd.sym} 620 -110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 620 -170 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {isource.sym} 740 -240 0 0 {name=I0 value=2u}
C {gnd.sym} 740 -210 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 740 -270 0 0 {name=p13 sig_type=std_logic lab=I_bias}
C {devices/code_shown.sym} 870 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 870 -480 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 10n 5u
plot v(out)
meas tran slew_rate trig v(out) val=0.8 rise=1 targ v(out) val=1.0 rise=1
.endc
"}
C {5t-ota.sym} 240 -320 0 0 {name=x1}
C {lab_pin.sym} 90 -340 0 0 {name=p1 sig_type=std_logic lab=I_bias}
C {lab_pin.sym} 90 -320 0 0 {name=p2 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 90 -300 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 510 -390 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 390 -320 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -300 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {capa-2.sym} 480 -350 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 480 -310 0 0 {name=l3 lab=GND}

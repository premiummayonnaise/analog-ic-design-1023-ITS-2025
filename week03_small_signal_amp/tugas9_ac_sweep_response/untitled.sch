v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {diff-pair.sym} 410 -230 0 0 {name=x1}
C {devices/code_shown.sym} 1160 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 1170 -420 0 0 {name=NGSPICE only_toplevel=true
value="
.control
ac dec 100 1 10G
plot I(OUT)
.endc
"}
C {vsource.sym} 700 -340 0 0 {name=V1 value="DC 3 AC 1m" savecurrent=false}
C {vsource.sym} 800 -340 0 0 {name=V2 value="DC 3.05 AC -1m" savecurrent=false}
C {vsource.sym} 900 -340 0 0 {name=V3 value="DC 5 AC 1m" savecurrent=false}
C {vsource.sym} 760 -190 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 700 -370 0 1 {name=p11 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 800 -370 0 1 {name=p12 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 900 -370 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 -310 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 -220 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {gnd.sym} 760 -160 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 700 -310 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -310 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {vsource.sym} 920 -190 0 0 {name=V5 value=0.5 savecurrent=false}
C {lab_pin.sym} 920 -220 0 0 {name=p18 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 920 -160 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {launcher.sym} 1860 -500 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/diff-pair.raw dc"
}
C {lab_pin.sym} 260 -210 0 0 {name=p1 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 260 -230 0 0 {name=p2 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 260 -250 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 560 -250 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -230 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -210 0 1 {name=p6 sig_type=std_logic lab=OUT}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1590 -520 2390 -120 {flags=graph
y1=-371.67113
y2=-177.21243
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-8.932624e-06
x2=1.0673768e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=ac
color="4 5"
node="out
diff_gain"}
T {ac dec 100 1 1G} 710 -680 0 0 0.4 0.4 {}
N 480 -440 600 -440 {lab=OUT}
C {vsource.sym} 800 -250 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 800 -350 0 0 {name=V2 value="dc 5 ac 0m" savecurrent=false}
C {vsource.sym} 800 -450 0 0 {name=V3 value="dc 5 ac 1m" savecurrent=false}
C {vsource.sym} 800 -150 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 800 -220 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -320 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -420 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -280 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -380 0 0 {name=p10 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 800 -480 0 0 {name=p11 sig_type=std_logic lab=VINP}
C {gnd.sym} 800 -120 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 800 -180 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {isource.sym} 950 -450 0 0 {name=I0 value=1u}
C {lab_pin.sym} 950 -420 0 0 {name=p13 sig_type=std_logic lab=I_bias}
C {devices/code_shown.sym} 1050 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {devices/code_shown.sym} 1050 -490 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
ac dec 100 1 1G
let vdiff = VINP
let diff_gain = OUT/vdiff
plot db(diff_gain)
write 5t-ota-diffgain.raw
.endc
"}
C {5t-ota.sym} 330 -420 0 0 {name=x1}
C {lab_pin.sym} 180 -440 0 0 {name=p1 sig_type=std_logic lab=I_bias}
C {lab_pin.sym} 180 -420 0 0 {name=p2 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 180 -400 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 600 -440 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 480 -420 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -400 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 950 -480 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {capa.sym} 600 -410 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 600 -380 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {launcher.sym} 1390 -510 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/5t-ota-diffgain.raw ac"
}

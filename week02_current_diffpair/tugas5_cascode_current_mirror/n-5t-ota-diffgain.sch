v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1660 -440 2460 -40 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
sim_type=ac}
N 580 -300 700 -300 {lab=OUT}
C {n-5t-ota.sym} 430 -280 0 0 {name=x1}
C {vsource.sym} 960 -230 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} 960 -330 0 0 {name=V2 value="dc 4 ac -2.45" savecurrent=false}
C {vsource.sym} 960 -430 0 0 {name=V3 value="dc 4 ac 2.45" savecurrent=false}
C {vsource.sym} 960 -130 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 960 -200 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 960 -300 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 960 -400 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 960 -260 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 -360 0 0 {name=p10 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 960 -460 0 0 {name=p11 sig_type=std_logic lab=VINP}
C {gnd.sym} 960 -100 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 960 -160 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {isource.sym} 1110 -430 0 0 {name=I0 value=90u}
C {lab_pin.sym} 1110 -400 0 0 {name=p13 sig_type=std_logic lab=I_bias}
C {devices/code_shown.sym} 1220 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice fs
"}
C {devices/code_shown.sym} 1210 -470 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
ac dec 100 1 10G
let vdiff = VINP - VINN
let diff_gain = OUT/vdiff
plot db(diff_gain)
write 5t-ota-diffgain.raw
.endc
"}
C {lab_pin.sym} 1110 -460 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -300 0 0 {name=p1 sig_type=std_logic lab=I_bias}
C {lab_pin.sym} 280 -280 0 0 {name=p2 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 280 -260 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 700 -300 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 580 -280 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 -260 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {capa.sym} 700 -270 0 0 {name=C1
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 700 -240 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {launcher.sym} 1720 -490 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/n-5t-ota-diffgain.raw tran"
}

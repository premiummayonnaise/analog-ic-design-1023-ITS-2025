v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1160 -460 1960 -60 {flags=graph
y1=-0.34722223
y2=1.6527777
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.175154e-05
x2=-1.7515412e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/n-5t-ota-diffgain.raw
color="8 12 18"
node="VINP
VINN
OUT"}
C {p-5t-ota.sym} 400 -210 0 0 {name=x1}
C {vsource.sym} 90 -280 0 0 {name=V1 value="DC 2 AC 1m" savecurrent=false}
C {vsource.sym} 90 -180 0 0 {name=V2 value="DC 2 AC -1m" savecurrent=false}
C {vsource.sym} 90 -80 0 0 {name=V3 value=5 savecurrent=false}
C {vsource.sym} 260 -80 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 90 -310 0 0 {name=p1 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 90 -210 0 0 {name=p2 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 90 -110 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 -50 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -110 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -250 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 -150 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {isource.sym} 360 -80 0 0 {name=I0 value=10u}
C {lab_pin.sym} 360 -110 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -50 0 0 {name=p5 sig_type=std_logic lab=Ibias}
C {gnd.sym} 260 -50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 250 -190 0 0 {name=p10 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 250 -210 0 0 {name=p11 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 250 -230 0 0 {name=p12 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 550 -210 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 550 -190 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -230 0 1 {name=p15 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 630 -100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {devices/code_shown.sym} 630 -320 0 0 {name=NGSPICE only_toplevel=true
value="
.control
ac dec 100 1 10G
let vdiff = VINP - VINN
let diffgain = OUT/vdiff
save all
plot OUT/vdiff
write p-5t-ota-tb.raw
.endc
"}
C {launcher.sym} 1270 -570 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/p-5t-ota-tb.raw tran"
}

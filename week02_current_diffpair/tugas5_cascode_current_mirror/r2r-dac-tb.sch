v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1230 -470 2030 -70 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=D2
color=8
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/r2r-dac-tb.raw
y1=0
y2=10
x2=0.0304
x1=0}
B 2 2210 -460 3010 -60 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=D3
color=8
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/r2r-dac-tb.raw
y1=0
y2=10
x2=0.0304
x1=0}
B 2 2210 -940 3010 -540 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=D1
color=8
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/r2r-dac-tb.raw
y1=0
x2=0.0304
x1=0
y2=8}
B 2 1230 -940 2030 -540 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=D0
color=8
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/r2r-dac-tb.raw
x2=0.0304
hilight_wave=0
y2=8
y1=0
x1=0}
B 2 3120 -940 3920 -540 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/r2r-dac-tb.raw
color=13
node=OUT
x1=0
y1=0
x2=0.0304
y2=5}
C {r2r-ladder.sym} 470 -370 0 0 {name=x1}
C {vsource.sym} 70 -440 0 0 {name=V1 value="PULSE(0 3.3 0 1n 1n 1m 2m)" savecurrent=false}
C {vsource.sym} 70 -320 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 2m 4m)" savecurrent=false}
C {vsource.sym} 70 -210 0 0 {name=V3 value="PULSE(0 3.3 0 1n 1n 4m 8m)" savecurrent=false}
C {vsource.sym} 70 -90 0 0 {name=V4 value="PULSE(0 3.3 0 1n 1n 8m 16m)" savecurrent=false}
C {isource.sym} 440 -230 0 0 {name=I0 value=10u}
C {vsource.sym} 350 -230 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 520 -230 0 0 {name=V6 value=0 savecurrent=false}
C {lab_pin.sym} 620 -410 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 -470 0 0 {name=p2 sig_type=std_logic lab=D0}
C {lab_pin.sym} 320 -410 0 0 {name=p3 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 620 -370 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 320 -330 0 0 {name=p5 sig_type=std_logic lab=D3}
C {lab_pin.sym} 320 -390 0 0 {name=p6 sig_type=std_logic lab=D0}
C {lab_pin.sym} 320 -370 0 0 {name=p7 sig_type=std_logic lab=D1}
C {lab_pin.sym} 320 -350 0 0 {name=p8 sig_type=std_logic lab=D2}
C {lab_pin.sym} 70 -180 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 620 -390 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -260 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -200 0 0 {name=p12 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 70 -120 0 0 {name=p13 sig_type=std_logic lab=D3}
C {lab_pin.sym} 70 -60 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 70 -350 0 0 {name=p15 sig_type=std_logic lab=D1}
C {lab_pin.sym} 70 -240 0 0 {name=p16 sig_type=std_logic lab=D2}
C {lab_pin.sym} 70 -410 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 70 -290 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 350 -260 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -260 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 350 -200 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {gnd.sym} 520 -200 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 710 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice fs
"}
C {devices/code_shown.sym} 710 -390 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 100u 32m
plot D0 D1 D2 D3 OUT
write r2r-dac-tb.raw 
.endc
"}
C {launcher.sym} 1290 -1050 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/r2r-dac-tb.raw tran"
}

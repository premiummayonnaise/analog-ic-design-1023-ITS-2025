v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 3360 -1000 4160 -600 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=A
color=9
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/untitled-3.raw
x2=6e-08
y2=7
y1=-3}
B 2 3360 -1440 4160 -1040 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/untitled-3.raw
x2=6e-08
color=12
node=B
y2=7
y1=-3}
B 2 4230 -1440 5030 -1040 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/untitled-3.raw
x2=6e-08
color=12
node=out
y2=7
y1=-3}
B 2 2000 -1670 2800 -1270 {flags=graph
y1=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=A
color=5
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=$netlist_dir/and-2.raw
x2=6e-08
y2=5}
B 2 2000 -1220 2800 -820 {flags=graph
y1=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=B
color=10
dataset=-1
unitx=1
logx=0
logy=0
x2=6e-08
y2=5}
B 2 1990 -640 2790 -240 {flags=graph
y1=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=10
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
x2=6e-08
y2=5}
N 930 -930 1170 -930 {lab=VDD}
N 930 -870 1170 -870 {lab=#net1}
N 1050 -870 1050 -820 {lab=#net1}
N 1050 -760 1050 -710 {lab=#net2}
N 1050 -650 1050 -610 {lab=VSS}
N 1050 -950 1050 -930 {lab=VDD}
N 930 -930 930 -900 {lab=VDD}
N 1170 -930 1170 -900 {lab=VDD}
N 1050 -790 1070 -790 {lab=VSS}
N 1050 -680 1070 -680 {lab=VSS}
N 1100 -900 1130 -900 {lab=B}
N 850 -900 890 -900 {lab=A}
N 970 -790 1010 -790 {lab=A}
N 970 -680 1010 -680 {lab=B}
N 1050 -840 1280 -840 {lab=#net1}
N 1320 -860 1320 -830 {lab=OUT}
N 1280 -890 1280 -800 {lab=#net1}
N 1320 -840 1380 -840 {lab=OUT}
N 1320 -920 1320 -890 {lab=VDD}
N 1320 -800 1320 -770 {lab=VSS}
N 1380 -840 1420 -840 {lab=OUT}
C {symbols/nfet_03v3.sym} 1030 -790 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1030 -680 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 910 -900 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1150 -900 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 970 -790 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 1100 -900 0 0 {name=p2 sig_type=std_logic lab=B}
C {lab_pin.sym} 850 -900 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} 970 -680 0 0 {name=p4 sig_type=std_logic lab=B}
C {lab_pin.sym} 1050 -610 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1070 -680 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1070 -790 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1050 -950 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1420 -840 2 0 {name=p9 sig_type=std_logic lab=OUT}
C {vsource.sym} 670 -700 0 0 {name=V1 value="PULSE(0 3.3 1p 1n 1n 10n 20n)" savecurrent=false}
C {vsource.sym} 670 -920 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 670 -590 0 0 {name=V3 value=0 savecurrent=false}
C {vsource.sym} 670 -810 0 0 {name=V4 value="PULSE(0 3.3 1p 1n 1n 5n 10n)" savecurrent=false}
C {lab_pin.sym} 670 -840 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} 670 -730 0 0 {name=p11 sig_type=std_logic lab=B}
C {lab_pin.sym} 670 -950 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 670 -620 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -780 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -670 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -890 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {gnd.sym} 670 -560 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 1520 -720 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {devices/code_shown.sym} 1490 -900 0 0 {name=NGSPICE only_toplevel=true
value="
.control
tran 1u 60n
save all
plot A B OUT
write and-2.raw 
.endc
"}
C {launcher.sym} 3420 -1520 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/untitled-3.raw tran"
}
C {symbols/pfet_03v3.sym} 1300 -890 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1300 -800 0 0 {name=M6
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1320 -920 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1320 -770 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {title-3.sym} 3060 -210 0 0 {name=l3 author="testbench" rev=1.0 lock=false}
C {title.sym} 720 -470 0 0 {name=l2 author="and-gate"}
C {launcher.sym} 1990 -1760 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/and-2.raw tran"
}
C {capa-2.sym} 1420 -810 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 1420 -780 2 0 {name=p19 sig_type=std_logic lab=VSS}

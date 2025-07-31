v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1380 -450 2180 -50 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.5e-06
x2=1.15e-05
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
sim_type=tran}
N 330 -160 330 -130 {lab=VSS}
N 330 -260 330 -220 {lab=VOUT}
N 330 -350 330 -320 {lab=VDD}
N 260 -190 290 -190 {lab=VIN}
N 330 -240 440 -240 {lab=VOUT}
N 330 -190 350 -190 {lab=VSS}
N 350 -190 350 -150 {lab=VSS}
N 330 -150 350 -150 {lab=VSS}
C {symbols/nfet_03v3.sym} 310 -190 0 0 {name=M1
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
C {lab_pin.sym} 330 -350 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 260 -190 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 440 -240 0 1 {name=p4 sig_type=std_logic lab=VOUT}
C {vsource.sym} 660 -370 0 0 {name=V1 value="0" savecurrent=false}
C {vsource.sym} 660 -270 0 0 {name=V2 value=5 savecurrent=false}
C {vsource.sym} 660 -180 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 330 -130 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -340 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -240 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -210 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -300 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 660 -400 0 0 {name=p10 sig_type=std_logic lab=VIN}
C {gnd.sym} 660 -150 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 790 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {devices/code_shown.sym} 810 -330 0 0 {name=NGSPICE only_toplevel=true
value="
.control
dc V1 0 3.3 0.01
save all
plot I(Vmeas)
write lengan-keju.raw
.endc
"}
C {launcher.sym} 1140 -440 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/lengan-keju.raw tran"
}
C {ammeter.sym} 330 -290 0 0 {name=Vmeas savecurrent=true spice_ignore=0}

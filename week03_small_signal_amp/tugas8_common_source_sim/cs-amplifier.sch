v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1370 -540 2170 -140 {flags=graph
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
rawfile=$netlist_dir/cs-amplifier.raw
sim_type=tran}
N 250 -250 250 -230 {lab=VOUT}
N 250 -240 400 -240 {lab=VOUT}
N 140 -200 210 -200 {lab=VIN}
N 250 -170 250 -140 {lab=VSS}
N 250 -350 250 -320 {lab=#net1}
N 250 -200 270 -200 {lab=#net2}
N 250 -270 250 -250 {lab=VOUT}
N 250 -430 250 -410 {lab=VDD}
C {symbols/nfet_03v3.sym} 230 -200 0 0 {name=M1
L=1u
W=8u
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
C {symbols/ppolyf_u_1k.sym} 250 -300 0 0 {name=R1
W=1u
L=100u
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 250 -430 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 700 -510 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
ac dec 100 1 10G
let gain = VOUT/VIN
plot db(gain)

write cs-amplifier.raw
.endc
"}
C {devices/code_shown.sym} 710 -270 0 0 {name=MODELS1 only_toplevel=true
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
C {lab_pin.sym} 140 -200 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 400 -240 0 1 {name=p3 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 230 -300 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {vsource.sym} 470 -130 0 0 {name=V1 value="dc 3.3 ac 1m" savecurrent=false}
C {vsource.sym} 470 -380 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 550 -380 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} 470 -100 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 470 -350 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -410 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 470 -160 0 0 {name=p9 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 470 -410 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 550 -350 0 0 {name=l1 lab=GND}
C {ammeter.sym} 250 -380 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {launcher.sym} 1080 -650 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cs-amplifier.raw tran"
}
C {iopin.sym} 340 -530 0 0 {name=p4 lab=VDD}
C {iopin.sym} 340 -500 0 0 {name=p11 lab=VSS}
C {lab_pin.sym} 250 -140 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {opin.sym} 340 -470 0 0 {name=p13 lab=VOUT}
C {ipin.sym} 360 -560 0 0 {name=p14 lab=VIN}
C {lab_pin.sym} 270 -200 0 1 {name=p15 sig_type=std_logic lab=VSS}

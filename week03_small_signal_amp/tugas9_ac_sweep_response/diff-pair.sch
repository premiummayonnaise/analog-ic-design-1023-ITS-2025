v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1530 -470 2330 -70 {flags=graph
y2=0.0024318395
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=f
x1=3.5265115e-07
x2=1.8939582e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
color="10 12 8"
node="i(vmeas1)
i(vmeas2)
i(vmeas)"
y1=0.0024317502}
N 210 -300 330 -300 {lab=VSS}
N 170 -270 370 -270 {lab=#net1}
N 270 -270 270 -240 {lab=#net1}
N 330 -300 370 -300 {lab=VSS}
N 170 -300 210 -300 {lab=VSS}
N 170 -410 170 -400 {lab=#net2}
N 170 -340 170 -330 {lab=#net3}
N 370 -410 370 -400 {lab=#net4}
C {symbols/nfet_03v3.sym} 390 -300 0 1 {name=M1
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
C {symbols/nfet_03v3.sym} 150 -300 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 250 -150 0 0 {name=M3
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
C {symbols/npolyf_u.sym} 170 -440 0 0 {name=R1
W=1e-6
L=1e-6
model=nplus_u
spiceprefix=X
m=1}
C {symbols/npolyf_u.sym} 370 -440 0 1 {name=R2
W=1e-6
L=1e-6
model=nplus_u
spiceprefix=X
m=1}
C {lab_pin.sym} 270 -120 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 230 -150 0 0 {name=p2 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 130 -300 0 0 {name=p3 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 270 -300 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -440 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 150 -440 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 -470 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -470 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 -150 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 890 -230 0 0 {name=MODELS only_toplevel=true
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
C {devices/code_shown.sym} 880 -410 0 0 {name=NGSPICE only_toplevel=true
value="
.control
tran 1u 10m
plot I(Vmeas) I(Vmeas1) I(Vmeas2)
.endc
"}
C {lab_pin.sym} 410 -300 0 1 {name=p10 sig_type=std_logic lab=VINN}
C {vsource.sym} 590 -380 0 0 {name=V1 value="DC 3 AC 1" savecurrent=false}
C {vsource.sym} 690 -380 0 0 {name=V2 value="DC 3.1 AC -1" savecurrent=false}
C {vsource.sym} 790 -380 0 0 {name=V3 value="DC 3" savecurrent=false}
C {vsource.sym} 650 -230 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 590 -410 0 1 {name=p11 sig_type=std_logic lab=VINN}
C {lab_pin.sym} 690 -410 0 1 {name=p12 sig_type=std_logic lab=VINP}
C {lab_pin.sym} 790 -410 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 790 -350 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 650 -260 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {gnd.sym} 650 -200 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 590 -350 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -350 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {vsource.sym} 810 -230 0 0 {name=V5 value="1" savecurrent=false}
C {lab_pin.sym} 810 -260 0 0 {name=p18 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} 810 -200 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {launcher.sym} 1590 -540 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/diff-pair.raw dc"
}
C {iopin.sym} 640 -130 0 0 {name=p20 lab=VSS}
C {iopin.sym} 640 -100 0 0 {name=p21 lab=VDD}
C {ipin.sym} 610 -130 0 0 {name=p22 lab=VINP}
C {ipin.sym} 610 -100 0 0 {name=p23 lab=Vbias}
C {ipin.sym} 610 -70 0 0 {name=p24 lab=VINN}
C {ammeter.sym} 170 -370 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 370 -370 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 270 -210 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}

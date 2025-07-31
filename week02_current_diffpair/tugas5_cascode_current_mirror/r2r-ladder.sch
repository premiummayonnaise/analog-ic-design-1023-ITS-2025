v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 570 -200 650 -200 {lab=#net1}
N 600 -310 600 -200 {lab=#net1}
N 600 -310 770 -310 {lab=#net1}
N 830 -310 1010 -310 {lab=OUT}
N 1010 -310 1010 -220 {lab=OUT}
N 950 -220 1050 -220 {lab=OUT}
N 640 -180 640 -160 {lab=VSS}
N 640 -180 650 -180 {lab=VSS}
N 470 -200 510 -200 {lab=#net2}
N 370 -200 410 -200 {lab=#net3}
N 270 -200 310 -200 {lab=#net4}
N 170 -200 210 -200 {lab=#net5}
N 80 -200 110 -200 {lab=VSS}
N 80 -200 80 -180 {lab=VSS}
N 190 -200 190 -170 {lab=#net5}
N 290 -200 290 -170 {lab=#net4}
N 390 -200 390 -170 {lab=#net3}
N 490 -200 490 -170 {lab=#net2}
C {n-5t-ota.sym} 800 -200 0 0 {name=x1}
C {res.sym} 800 -310 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 950 -200 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 950 -180 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {res.sym} 540 -200 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 440 -200 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 340 -200 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 240 -200 1 0 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -200 1 0 {name=R6
value=2k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 -140 0 0 {name=R7
value=2k
footprint=1206
device=resistor
m=1}
C {res.sym} 290 -140 0 0 {name=R8
value=2k
footprint=1206
device=resistor
m=1}
C {res.sym} 390 -140 0 0 {name=R9
value=2k
footprint=1206
device=resistor
m=1}
C {res.sym} 490 -140 0 0 {name=R10
value=2k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 190 -110 0 0 {name=p3 sig_type=std_logic lab=D0}
C {lab_pin.sym} 290 -110 0 0 {name=p4 sig_type=std_logic lab=D1}
C {lab_pin.sym} 390 -110 0 0 {name=p5 sig_type=std_logic lab=D2}
C {lab_pin.sym} 490 -110 0 0 {name=p6 sig_type=std_logic lab=D3}
C {lab_pin.sym} 1050 -220 0 1 {name=p7 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 650 -220 0 0 {name=p8 sig_type=std_logic lab=Ibias}
C {ipin.sym} 270 -360 0 0 {name=p9 lab=D0}
C {ipin.sym} 270 -330 0 0 {name=p10 lab=D1}
C {ipin.sym} 270 -300 0 0 {name=p11 lab=D2}
C {ipin.sym} 270 -270 0 0 {name=p12 lab=D3}
C {ipin.sym} 440 -360 0 0 {name=p13 lab=Ibias}
C {iopin.sym} 420 -330 0 0 {name=p14 lab=VDD}
C {iopin.sym} 420 -300 0 0 {name=p15 lab=VSS}
C {opin.sym} 420 -270 0 0 {name=p16 lab=OUT}
C {lab_pin.sym} 640 -160 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 80 -180 0 0 {name=p18 sig_type=std_logic lab=VSS}

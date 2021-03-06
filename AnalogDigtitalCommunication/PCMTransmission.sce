//Caption:PCM Transmission (includes functions:uniform_pcm.sce, PCM_encoding.sce)
//This program is a sample program for Pulse Code Modulation transmission
//step 1: The given analog signal converted into quantized sample value
//step 2: Then the quantized sample value converted into binary value
clc;
close;
t = 0:0.001:1;
x  = sin(2*%pi*t);
L = 16;
//Step 1
[SQNR,xq,en_code] = uniform_pcm(x,L);
//Step 2
c = PCM_Encoding(x,L,en_code);
a =gca();
a.x_location ="origin";
a.y_location ="origin";
plot2d2(t*2*%pi,x);
plot2d2(t*2*%pi,xq,5);
title('Quantization of Sampled analog signal')
legend(['Analog signal','Quantized Signal'])
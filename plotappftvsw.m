function []=plotappftvsw()
% function used to plot application finish time versus the increasing
% workload for the second case where there are collaboration between edge
% servers 
% "workload = [[8.7962963  3.7037037  9.25925926 3.24074074 7.40740741 6.48148148
%  6.01851852 5.09259259]]"	datasize = workload * 0.8		workload = workload * index 		datasize = datasize * index			Budget = sum(datasize) * 0.1

close all
clear all
clc
datasize=[50
100
150
200
250
300
350
400
450

];
x=datasize;
gcc_time=[174.4046726
348.7430267
523.0650826
697.377533
871.6833687
1045.984169
1220.280937
1394.57428
1568.864876
];
gcc=gcc_time;
fnc_time=[177.8254166
345.1422005
517.6638451
690.1758804
851.603466
1021.872009
1192.134644
1362.392342
1532.645973

];
greedy_time=[204.6230783
409.1949196
613.7539968
818.3055153
1022.851875
1227.394186
1431.933392
1636.469795
1841.00428
];
greedy=greedy_time;
gcc_cost=[3.96503013
7.12922036
10.09707384
12.94995998
15.72288529
18.43516932
21.09896902
23.72258947
26.31204453

];

fnc_cost=[2.526762527
7.443500499
10.54679427
13.53057667
19.56823682
22.93998669
26.25113509
29.51207636
32.73032782

];

greedy_cost=[2.888888896
5.777777792
8.666666747
11.55555558
14.44444466
17.33333349
20.22222233
23.11111117
26
];
fnc=fnc_time;
yyaxis left
plot(x,gcc,'O--',x,fnc,'^--',x,greedy,'S--','linewidth',2);
grid on;
xlabel('Data size');

ylabel('Application finish time');
hold on

yyaxis right
plot(x,gcc_cost,'O:',x,fnc_cost,'^:',x,greedy_cost,'S:','linewidth',2);
ylabel('Total cost');
legend('Case 2-time-GCC','Case 2-time-EEC','Case 2-time-Greedy','Case 2-cost-GCC','Case 2-cost-EEC','Case 2-cost-Greedy','Location','best');
temp1=0;
temp2=0;
for i=1:length(x)
    temp1=temp1+((greedy(i)-fnc(i))/(fnc(i)));
    temp2=temp2+(greedy(i)-gcc(i))/(gcc(i));
end
temp1=temp1/length(x);
temp2=temp2/length(x);
greedy_fnc_time=temp1
greedy_gcc_time=temp2

temp1=0;
temp2=0;
for i=1:length(x)
    temp1=temp1+(fnc_cost(i)-greedy_cost(i))/(greedy_cost(i));
    temp2=temp2+((fnc_cost(i)-gcc_cost(i)))/(gcc_cost(i));
end
temp1=temp1/length(x);
temp2=temp2/length(x);
fnc_greedy_cost=temp1
fnc_gcc_cost=temp2
    
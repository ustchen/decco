function []=plotappftvsw()
% function used to plot application finish time versus the increasing
% workload for the second case where there are collaboration between edge
% servers 
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
gcc_time=[209.2878284
418.4981117
627.6889935
836.8685684
1046.040199
1255.2057
1464.366547
1673.523331
1882.676727

];
gcc=gcc_time;
fnc_time=[207.1273365
414.1771278
621.2075253
817.6168594
1021.95491
1226.284077
1430.606346
1634.922714
1839.2341
];

gcc_cost=[4.78335778
8.630811534
12.24522817
15.72288529
19.10529038
22.41538501
25.66761498
28.8718656
32.03528894
];

fnc_cost=[4.991372722
9.013506669
12.79345947
19.56823682
23.77298646
27.887359
31.92943088
35.9115586
39.84268812
];

fnc=fnc_time;
xlabel('Data size');
ylabel('Total cost');
hold on
plot(x,gcc_cost,'rS-',x,fnc_cost,'bO-','linewidth',2);
legend('Case 2-GCC','Case 2-EEC','Location','best');
grid on;
hold off




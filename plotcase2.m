function []=plotcase2()
% script used to plot case 2
% work load and data size has linear relation
close all
clc
clear all
ds=[50
100
150
200
250
300
350
400
450
];
GCC_tm_Lbgt=[209.6880093
418.4981117
627.6889935
836.8685684
1046.040199
1255.2057
1464.366547
1673.523331
1882.676727


];  %   already updated 2018-09-09
EEC_tm_Lbgt=[213.3917141
426.7353554
621.2075253
828.2266006
1035.237724
1242.242748
1449.243103
1656.239395
1863.232269


]; %   already updated 2018-09-09

GCC_tm_Mbgt=[163.8481402
327.4892489
491.0785461
654.6374632
818.1751781
981.6967063
1145.205465
1308.703464
1472.192394

]; %   already updated 2018-09-09

EEC_tm_Mbgt=[185.9232106
371.681531
557.398366
743.090868
928.7663593
1114.428858
1300.081133
1485.724781
1671.361118

];%   already updated 2018-09-09

GCC_cost_Lbgt=[3.461200754
9.941459682
14.2112004
18.34418159
22.38191075
26.34732946
30.2548835
34.11445819
37.9332056

];%   already updated 2018-09-09

GCC_cost_Mbgt=[16.49826849
30.40875411
43.67175841
56.55445766
69.17214131
81.58855438
93.84386206
105.9655442
117.9735026

];%   already updated 2018-09-09

EEC_cost_Lbgt=[3.461200754
6.321561654
14.86290391
19.19046842
23.41895999
27.57221762
31.66526408
35.70837424
39.70898914


];%   already updated 2018-09-09

EEC_cost_Mbgt=[13.27078738
24.28885608
34.74342259
44.86701404
54.75996984
64.47776477
74.05535597
83.51665756
92.87899065

];%   already updated 2018-09-09


gd_tm_Lbgt=[245.549859
491.0396862
736.5142345
981.9799995
1227.439375
1472.893963
1718.345011
1963.792732
2209.237717


];%   already updated 2018-09-09
gd_tm_Mbgt=[186.3428901
372.5013774
558.6135941
744.6987801
930.764982
1116.81666
1302.857141
1488.887866
1674.910468
];%   already updated 2018-09-09

gd_cost_Lbgt=[3.611111165
7.222222329
10.83333349
14.44444466
18.05555535
21.66666699
25.27777768
28.88888932
32.5

];%   already updated 2018-09-09
gd_cost_Mbgt=[16.75925922
33.51851845
50.27777767
67.0370369
83.79629517
100.5555553
117.3148146
134.0740738
150.8333321

];%   already updated 2018-09-09

figure(1)
subplot(1,2,1)
plot(ds,GCC_tm_Lbgt,'rP:',ds,EEC_tm_Lbgt,'bD:',ds,gd_tm_Lbgt,'k*:','LineWidth',1);
hold on;
plot(ds,GCC_tm_Mbgt,'rP-',ds,EEC_tm_Mbgt,'bD-',ds,gd_tm_Mbgt,'k*-','LineWidth',1);
grid on;
legend('Case 1: GCC (Low Budgets)', 'Case 1: EEC (Low Budgets)','Case 1: Greedy (Low Budgets)','Case 1: GCC (High Budgets)','Case 1: EEC (High Budgets)','Case 1: Greedy (High Budgets)' ,'Location','best');
xlabel('Data size'); ylabel('Application finish time');
 axis([50 450 0 2500 ])
 axes('Position',[0.28,0.15,0.1,0.25]); % ????   
 t1=[200
 250
];
y1=[828.2266006
1035.237724
];
 t2=t1;
 y2=[836.8685684
1046.040199
];
 t3=t2;
 y3=[743.090868
928.7663593
];
 t4=t3;
 y4=[744.6987801
930.764982
];
% t5=t4;
% y5=[694.0876446
% 867.3718338
% 1040.623917];
% t6=t5;
% y6=[743.3481947
% 929.0767515
% 1114.790874];
 plot(t1,y1,'bD:',t2,y2,'rP:',t3,y3,'bD-',t4,y4,'k*-','LineWidth',1); % ???????                         
 xlim([min(t1),max(t1)]); % ???????
len=length(ds);
GCC_tmlb_jy_EEC_tmlb=0;
GCC_tmmb_jy_EEC_tmmb=0;
for i=1:len
    GCC_tmlb_jy_EEC_tmlb=GCC_tmlb_jy_EEC_tmlb+(EEC_tm_Lbgt(i)-GCC_tm_Lbgt(i))/(EEC_tm_Lbgt(i));
    GCC_tmmb_jy_EEC_tmmb=GCC_tmmb_jy_EEC_tmmb+(EEC_tm_Mbgt(i)-GCC_tm_Mbgt(i))/(EEC_tm_Mbgt(i));
end
GCC_tmlb_jy_EEC_tmlb=GCC_tmlb_jy_EEC_tmlb/len
GCC_tmmb_jy_EEC_tmmb=GCC_tmmb_jy_EEC_tmmb/len
subplot(1,2,2)
plot(ds,GCC_cost_Lbgt,'rP:',ds,EEC_cost_Lbgt,'bD:',ds,gd_cost_Lbgt,'k*:','LineWidth',1);
hold on;
plot(ds,GCC_cost_Mbgt,'rP-',ds,EEC_cost_Mbgt,'bD-',ds,gd_cost_Mbgt,'k*-','LineWidth',1);
legend('Case 1: GCC (Low Budgets)', 'Case 1: EEC (Low Budgets)','Case 1: Greedy (Low Budgets)','Case 1: GCC (High Budgets)','Case 1: EEC (High Budgets)','Case 1: Greedy (High Budgets)' ,'Location','best');
grid on;
xlabel('Data size'); ylabel('Total cost');
axis([50 450 0 180 ])
% axes('Position',[0.7,0.25,0.1,0.25]); % ????   
% t11=[250
% 300];
% y11=[69.59670144
% 82.09702767];
% t21=t11;
% y21=[69.17214131
% 81.58855438];
% plot(t11,y11,'bD-',t21,y21,'rP-','LineWidth',1); % ???????                         
% xlim([min(t11),max(t11)]); % ???????

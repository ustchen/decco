function []=plotcase1()
% script used to plot case 1
% work load and data size has no special relation
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
GCC_tm_Lbgt=[202.508935
387.616293
581.3662949
775.1049156
968.8356819
1162.560303
1356.28019
1549.996056
1743.708542

];
EEC_tm_Lbgt=[206.0566282
412.0532284
618.0346146
824.0070534
1029.973331
1203.774445
1404.360481
1604.942177
1805.520248

];

GCC_tm_Mbgt=[155.0009065
309.7947851
464.5368667
619.2485205
773.9390445
928.6133323
1083.274854
1237.925609
1392.567302
];

EEC_tm_Mbgt=[173.3239255
346.453496
519.5341272
692.5860004
865.6179066
1038.634455
1211.638908
1384.633137
1557.61882
];

GCC_cost_Lbgt=[3.461200754
9.941459682
14.2112004
18.34418159
22.38191075
26.34732946
30.2548835
34.11445819
37.9332056

];

GCC_cost_Mbgt=[16.49826849
30.40875411
43.67175841
56.55445766
69.17214131
81.58855438
93.84386206
105.9655442
117.9735026

];

EEC_cost_Lbgt=[4.286193278
8.042013518
11.66910084
15.22080259
18.72007251
29.92334895
34.49665442
39.02931047
43.52739249

];

EEC_cost_Mbgt=[16.58718051
30.58157786
43.92849437
56.89510583
69.59670144
82.09702767
94.4362454
106.6418395
118.7337109
];

gd_tm_Lbgt=[251.9421318
503.8406615
755.7284575
1007.610011
1259.48715
1511.360983
1763.232016
2015.101202
2266.968344
];
gd_tm_Mbgt=[186.0052409
371.8260847
557.6007082
743.3481947
929.0767515
1114.790874
1300.493531
1486.186695
1671.871667
];
gd_cost_Lbgt=[3.611111165
7.222222329
10.83333349
14.44444466
18.05555535
21.66666699
25.27777768
28.88888932
32.5
];
gd_cost_Mbgt=[18.61111116
37.22222233
55.83333397
74.44444466
93.05555344
111.6666679
130.2777758
148.8888893
167.5
];
len=length(ds);
GCC_tmlb_jy_EEC_tmlb=0;
GCC_tmmb_jy_EEC_tmmb=0;

GCC_tmlb_jy_gd_tmlb=0;
EEC_tmlb_jy_gd_tmlb=0;

GCC_tmmb_jy_gd_tmmb=0;
EEC_tmmb_jy_gd_tmmb=0;

GCC_ctlb_jy_gd_ctlb=0;
EEC_ctlb_jy_gd_ctlb=0;

GCC_ctmb_jy_gd_ctmb=0;
EEC_ctmb_jy_gd_ctmb=0;

for i=1:len
    GCC_tmlb_jy_EEC_tmlb=GCC_tmlb_jy_EEC_tmlb+(EEC_tm_Lbgt(i)-GCC_tm_Lbgt(i))/(EEC_tm_Lbgt(i));
    GCC_tmmb_jy_EEC_tmmb=GCC_tmmb_jy_EEC_tmmb+(EEC_tm_Mbgt(i)-GCC_tm_Mbgt(i))/(EEC_tm_Mbgt(i));
    GCC_tmlb_jy_gd_tmlb=GCC_tmlb_jy_gd_tmlb+(gd_tm_Lbgt(i)-GCC_tm_Lbgt(i))/(gd_tm_Lbgt(i));
    EEC_tmlb_jy_gd_tmlb=EEC_tmlb_jy_gd_tmlb+(gd_tm_Lbgt(i)-EEC_tm_Lbgt(i))/(gd_tm_Lbgt(i));
    EEC_ctlb_jy_gd_ctlb=EEC_ctlb_jy_gd_ctlb+(EEC_cost_Lbgt(i)-gd_cost_Lbgt(i))/(gd_cost_Lbgt(i));
    GCC_tmmb_jy_gd_tmmb=GCC_tmmb_jy_gd_tmmb+(gd_tm_Mbgt(i)-GCC_tm_Mbgt(i))/(gd_tm_Mbgt(i));
    EEC_tmmb_jy_gd_tmmb=EEC_tmmb_jy_gd_tmmb+(gd_tm_Mbgt(i)-EEC_tm_Mbgt(i))/(gd_tm_Mbgt(i));
    EEC_ctmb_jy_gd_ctmb=EEC_ctmb_jy_gd_ctmb+(gd_cost_Mbgt(i)-EEC_cost_Mbgt(i))/(gd_cost_Mbgt(i));
end
GCC_tmlb_jy_EEC_tmlb=GCC_tmlb_jy_EEC_tmlb/len;
GCC_tmmb_jy_EEC_tmmb=GCC_tmmb_jy_EEC_tmmb/len;
    GCC_tmlb_jy_gd_tmlb=    GCC_tmlb_jy_gd_tmlb/len;
    EEC_tmlb_jy_gd_tmlb=EEC_tmlb_jy_gd_tmlb/len;
    EEC_ctlb_jy_gd_ctlb=EEC_ctlb_jy_gd_ctlb/len;
    GCC_tmmb_jy_gd_tmmb=GCC_tmmb_jy_gd_tmmb/len;
    EEC_tmmb_jy_gd_tmmb=EEC_tmmb_jy_gd_tmmb/len;
    EEC_ctmb_jy_gd_ctmb=EEC_ctmb_jy_gd_ctmb/len
figure(1)
plot(ds,GCC_tm_Lbgt,'rP:',ds,gd_tm_Lbgt,'kO:','LineWidth',2);
hold on;
plot(ds,GCC_tm_Mbgt,'rP-',ds,gd_tm_Mbgt,'kO-','LineWidth',2);
grid on;
legend('Case 1: GCC (Low Budgets)','Case 1: SEG (Low Budgets)','Case 1: GCC (High Budgets)','Case 1: SEG (High Budgets)' ,'Location','best');
xlabel('Data size (MB)'); ylabel('Application finish time (ms)');
% axis([50 450 0 2500 ])
% axes('Position',[0.38,0.15,0.1,0.25]); % ????   
% t1=[200
% 250
% 300];
% y1=[775.1049156
% 968.8356819
% 1162.560303];
% t2=t1;
% y2=[824.0070534
% 1029.973331
% 1203.774445];
% t3=t2;
% y3=[1007.610011
% 1259.48715
% 1511.360983];
% t4=t3;
% y4=[620.2351231
% 775.1452204
% 930.0352651];
% t5=t4;
% y5=[694.0876446
% 867.3718338
% 1040.623917];
% t6=t5;
% y6=[743.3481947
% 929.0767515
% 1114.790874];
% plot(t1,y1,'rP:',t3,y3,'k*:',t4,y4,'rP-',t6,y6,'k*-','LineWidth',1); % ???????                         
% xlim([min(t1),max(t1)]); % ???????

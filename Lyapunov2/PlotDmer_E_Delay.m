close all;
clear all
clc;
V=[0.2 0.4 0.5 1 2 3 4 5]*10^9;
D_decco_650=[61,141,141,237,387,455,470,548];
E_decco_650=[ 7.586,7.11,6.94,6.61,6.33,6.138,6.06,6.06];
% D_decco_750=[17.94, 26.3, 43.5, 799, 1046, 1434,2534.5,2734];
D_decco_750=[39.25 87.8 99.88 220.67 356.8678 465.27 510 660];
% E_decco_750=[19.45 17.8 16.27 16.17 14.78 14.68 13.35 13.17];
E_decco_750=[9.2 8.5 8.33 8.0267 7.73 7.388 7.268 7.13];
% [AX,H1,H2] = plotyy(V,[D_decco_650,D_decco_750],V,[E_decco_650,E_decco_750],'plot');
%  hold on;
%  grid on;
%  set(AX(1),'XColor','k','YColor','b');
%  set(AX(2),'XColor','k','YColor','r');
%  HH1=get(AX(1),'Ylabel');
%  set(HH1,'String','Average Service Delay');
%  set(HH1,'color','b');
%  HH2=get(AX(2),'Ylabel');
%  set(HH2,'String','Average Energy Consumption');
%  set(HH2,'color','r');
%  set(H1(1),'LineStyle','-','Linewidth',2);
%  set(H1(1),'color','b');
%  set(H1(2),'LineStyle','-.','Linewidh',2);
%  set(H1(2),'color','b');
%  set(H2(1),'LineStyle','-','Linewidth',2);
%  set(H2(1),'color','r');
%  set(H2(2),'LineStyle','-.','Linewidth',2);
%  set(H2(2),'color','r');
%  h=legend('$D_{m}^{er}(t)=650$ bit/s','$D_{m}^{er}(t)=650$ bit/s','$D_{m}^{er}(t)=750$ bit/s','$D_{m}^{er}(t)=750$ bit/s');
%  set(h,'Interpreter','latex');
%  xlabel('Control Parameter V');
[AX,HY1,HY2]=plotyy(V,D_decco_650,V,E_decco_650,'plot');
%set(get(AX(1),'Ylabel'),'String','??1','linewidth',5.6)
%set(get(AX(2),'Ylabel'),'String','??2','linewidth',6.8)
%set(HY1,'LineStyle',':','Marker','o','MarkerSize',58)
%set(HY2,'LineStyle','-','Marker','o','MarkerSize',32)
hold on
[AX,HY3,HY4]=plotyy(V,D_decco_750,V,E_decco_750,'plot');
set(get(AX(1),'Ylabel'),'String','Average Service Delay (ms)','linewidth',2)
set(get(AX(2),'Ylabel'),'String','Average Energy Consumption (W)','linewidth',2)
set(AX(1),'XColor','k','YColor','b');
set(AX(2),'XColor','k','YColor','r');
set(HY1,'LineStyle',':','Marker','S','MarkerSize',5.6,'Linewidth',2)
set(HY1,'color','b');
set(HY2,'LineStyle',':','Marker','O','MarkerSize',6.8,'Linewidth',2)
set(HY2,'color','r');
set(HY3,'LineStyle','--','Marker','S','MarkerSize',5.6,'Linewidth',2)
set(HY3,'color','b');
set(HY4,'LineStyle','--','Marker','O','MarkerSize',6.8,'Linewidth',2)
 set(HY4,'color','r');
H=[HY1 HY2 HY3 HY4];
h=legend(H,'Low edge-cloud transmission rate $D_{m}^{er}(t)=650$ bit/s','Low edge-cloud transmission rate $D_{m}^{er}(t)=650$ bit/s','High edge-cloud transmission rate $D_{m}^{er}(t)=750$ bit/s','High edge-cloud transmission rate $D_{m}^{er}(t)=750$ bit/s');
set(h,'Interpreter','latex');
xlabel('Control Parameter V');
grid on
  
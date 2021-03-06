close all
clear all
clc
x=[0.2 0.4 0.5 1 2 3 4]*10^(9);
cr=[2.2235   2.1816  2.17667  2.1695 2.164173 2.1634 2.1630];
cg=[2.277  2.2153 2.19564 2.1727 2.16618 2.1643 2.1636];
cb=[1.072  0.9573  0.9424  0.9228  0.9167 0.91457  0.9138];
cm=[0.974  0.9321 0.9283  0.918   0.9145   0.9136    0.9133];
figure(1)
    plot(x,cb,'bS--','linewidth',2);
    hold on;
    plot(x,cr,'rO--','linewidth',2)
    plot(x,cm,'mD--','linewidth',2)
    plot(x,cg,'gP--','linewidth',2);
 % plot( vector_V,bar_E_2,'linewidth',2);
xlabel('V (bits^2 \cdot W^{-1})');
ylabel('$\bar{E}$', 'Interpreter','latex');
legend('w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.5','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.5');
grid on;
 
hold on;
axes('Position',[0.23,0.34,0.1,0.25]); % ????   
 t1=[0.2 0.4 0.5 1]*10^(9);
y1=[1.072  0.9573  0.9424  0.9228];
 t2=t1;
 y2=[2.2235   2.1816  2.17667  2.1695];
 t3=t2;
 y3=[0.974  0.9321 0.9283  0.918 ];
 t4=t3;
 y4=[2.277  2.2153 2.19564 2.1727];
% t5=t4;
% y5=[694.0876446
% 867.3718338
% 1040.623917];
% t6=t5;
% y6=[743.3481947
% 929.0767515
% 1114.790874];
 plot(t1,y1,'bS--',t2,y2,'rO--',t3,y3,'mD--',t4,y4,'gP--','LineWidth',1); % ???????                         
 xlim([min(t1),max(t1)]); % ???????
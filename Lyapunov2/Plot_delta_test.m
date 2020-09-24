close all;
clear all;
clc
figure(1)
V=[0.2 0.4 0.5 1 2 3 4 5 10 15 20 25]*10^(9);
E_delta_dot5=[8.75   7.075 7.024 6.86        5.95 5.893 5.584 5.37 5.25 5.249 5.247 5.246];
D_delta_dot5=[46.75 83.67 95.5   151.333  164  251   384.4    437 449  638.5  657 936];
E_delta_dot3=[7.586 7.11 6.94 6.61 6.33 6.138 6.06 6.06 5.81 5.65 5.65 5.65];
D_delta_dot3=[61 97.94 113.7 202 219 403 455 465.5 474.5 673.5 689.5 980.137];
E_delta_dot2=[7.5 7.082 6.98   6.61   6.205    6.2     6.14     6.05  5.765 5.67  5.67];
D_delta_dot2=[67 100.5  117.5 211.4 269.85 492.5 530.25 725   726.5 916    1010.5];
semilogy(D_delta_dot3,E_delta_dot3,'bS-','Linewidth',2);
hold on
semilogy(D_delta_dot2,E_delta_dot2,'rO-','Linewidth',2);
semilogy(D_delta_dot5,E_delta_dot5,'D-','color',[0.667 0.667 1],'Linewidth',2);
h=legend('$\delta=0.3$','$\delta=0.2$','$\delta=0.5$');
set(h,'Interpreter','latex');
xlabel('Average Service Delay (ms)');
ylabel('Average Energy Consumption (W)');
grid on;
hold off
figure(2)

E_An3=E_delta_dot5 ;
D_An3=D_delta_dot5 ;
D_An5=[353.66 378 392.5 465.5 655 707 898 1210.5 1360 1441.5 1442 1624];
E_An5=[9.65 8.942 8.85 7.88 7.53 7.235 6.942 6.7 6.46 6.125 6.12 5.9];
D_An7=[623 766.5 1111 1233.5 1287.5 1306.85 1659.5 1679 1709.5 2253 2276 2457];
E_An7=[10.96 10 9.74 9.314 8.743 8.4736 8.212 8.0 7.29 7.03 6.8 6.68];
semilogy(D_An7,E_An7,'bS-','Linewidth',2);
hold on;
semilogy(D_An5,E_An5,'rO-','Linewidth',2);
semilogy(D_An3,E_An3,'D-','color',[0.667 0.667 1],'Linewidth',2);
h=legend('$\delta=0.5, A_n^{\max}=7000$','$\delta=0.5, A_n^{\max}=5000$','$\delta=0.5, A_n^{\max}=3000$');
set(h,'interpreter','latex')
xlabel('Average Service Delay (ms)');
ylabel('Average Energy Consumption (W)');
grid on;
hold off


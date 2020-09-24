close all;
clear all;
clc
V=[0.2 0.4 0.5 1 2 3 4 5]*10^9;
% decco=[ 14.866 13.89 13.28 12.9688 12.29 12.09 11.77 11.05];
decco=[7.586,7.11,6.94,6.61,6.33,6.138,6.06,6.06];
% decco03=[13.36 11.7 11.228 11.27 10.215 9.97 9.92 9.70];
decco03=[6.373,5.678,5.67,5.3,5.133,5.0,4.876,4.87];
decco01=[4.88, 4.15, 4.14,4.05,3.895,3.78,3.74,3.702];
%decco01=[9.1 8.7 7.8 7.6 7.56 7.44 7.41 7.14];
% twolayeredge=[ 17.33 16.72 16.41 14.783 12.018 10.36 9.33 8.68];
twolayeredge=[8.68,8.365,8.203,7.41,5.44,5.185,4.68,4.36];
% neighboredge=[19.037 17.23 16.812 14.987 12.05 10.385 9.392 8.70];
neighboredge=[9.36,8.6,8.367,7.5,6.03,5.2,4.7,4.4];
% local=[ 17.365   16.98 16.427 14.97 12.97 11.25 10.53 10.2];
local=[8.68,8.36,8.2,7.7,7.4,7.1,6.8,6.8];
semilogy(V,decco,'rP:','linewidth',2);
hold on;
semilogy(V,twolayeredge,'bS-.','linewidth',2);
semilogy(V,neighboredge,'o:','color',[1 0.697 0.0],'linewidth',2);
semilogy(V,local,'k^:','linewidth',2);
semilogy(V,decco03,'P-.','color',[0.667 0.167 1],'linewidth',2);
semilogy(V,decco01,'P-','color',[ 0.8800    0.0800    0.2400],'linewidth',2);
legend('DECCO Algorithm w_{N+M+1}=0.5','Two-layer Edge Computing (Mao et al.)','Neighbor Edge Computing (Yang et al.)','Local Computing','DECCO Algorithm w_{N+M+1}=0.3','DECCO Algorithm w_{N+M+1}=0.1','Location','best');
hold on
xlabel('Control Parameter V');
ylabel('Average Energy Consumption (W)');
grid on;
hold off;
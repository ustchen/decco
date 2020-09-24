close all;
clear all
clc;
V=[0.2 0.4 0.5 1 2 3 4 5]*10^9;
% decco=[63.84,166.5,184.5,524,726,932.1,1134.6,1378.5];
decco=[61,141,141,237,387,455,470,548];
% twolayeredge=[1672,2501,2864,4508,6748,8146.5,9029,9810.5];
twolayeredge=[851,1249,1434,2258,3387,4077,4546,4904];
% neighboredge=[1738.5,2486.75,2818.3, 4517,6769,8162.5,9058.5,9787.5];
neighboredge=[860,1249.5,1536.5,2358,3489,4076.5,4546,4906];
% local=[1989.2,3264.8,3565.07,5836.93,8345.87,9635.75,11362.5, 11786.5];
local=[1110,1600.86,1792.1,2705.4,4060.8,5092,5142,5902];
semilogy(V,decco,'rP-','linewidth',2);
hold on;
semilogy(V,twolayeredge,'bS-.','linewidth',2);
semilogy(V,neighboredge,'o:','color',[1 0.697 0.0],'linewidth',2);
semilogy(V,local,'k^:','linewidth',2);
legend('DECCO Algorithm','Two-layer Edge Computing (Mao et al.)','Neighbor Edge Computing (Yang et al.)','Local Computing','Location','best');

xlabel('Control Parameter V');
ylabel('Average Service Delay (ms)');
grid on;

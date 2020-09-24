function []=avgPower_NRC()
clear;
clc;
close all;
V=1000000000;
%vector_V=[ 0.2 0.4  0.50 1 2 3 4 5 6 7 10 15 20 25 30]*V;
vector_V=[1]*V;  % used to debug the Zm and femstar

 figure(1)
 for iter=1:10
%[bar_E_1,~]=Sum_power_V_NRC(1,0.1,0.1,vector_V); 
%bar_E_1=bar_E_1+bar_E_1;
 %[bar_E_2,~]=Sum_power_V_NRC(1,0.5,0.5,vector_V);
 %bar_E_2=bar_E_2+bar_E_2;
 %[bar_E_3,~]=Sum_power_V_NRC(1,0.5,0.1,vector_V);
 %bar_E_3=bar_E_3+bar_E_3;
  [bar_E_4,~]=Sum_power_V_NRC(1,0.1,0.5,vector_V);
  bar_E_4=bar_E_4+bar_E_4;
 end
  
%plot(vector_V,bar_E_1/iter,'bS--',vector_V,bar_E_2/iter,'rO--',vector_V,bar_E_3/iter,'mD--',vector_V,bar_E_4/iter,'gP--','linewidth',2);
plot( vector_V,bar_E_4,'rO','linewidth',2);
xlabel('V (bits^2 \cdot W^{-1})');
ylabel('$\bar{E}$', 'Interpreter','latex');
 %legend('w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.5','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.5');
grid on;
end

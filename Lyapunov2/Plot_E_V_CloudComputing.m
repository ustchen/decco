function []=Plot_E_V_CloudComputing()
clear;
clc;
close all;
 V=1000000000;
 % vector_V=[ 0.2 0.4  0.50 1 2 3 4]*V;
  vector_V=[5]*V;  % used to debug the Zm and femstar
  bar_E_4_temp=zeros(size(vector_V));
bar_E_4=0;
itermax=10;
 figure(1)
 for iter=1:itermax
% [bar_E_1,~]=E_V_CloudComputing(1,0.1,0.1,vector_V); 
% bar_E_1=bar_E_1+bar_E_1;
%  [bar_E_2,~]=E_V_CloudComputing(1,0.5,0.5,vector_V);
%  bar_E_2=bar_E_2+bar_E_2;
%  [bar_E_3,~]=E_V_CloudComputing(1,0.5,0.1,vector_V);
%  bar_E_3=bar_E_3+bar_E_3;
  [bar_E_4_temp(itermax),~]=E_V_CloudComputing(1,0.1,0.5,vector_V);
  bar_E_4=bar_E_4+bar_E_4_temp(itermax);
 end    
  
%plot(vector_V,bar_E_1/iter,'bS--',vector_V,bar_E_2/iter,'rO--',vector_V,bar_E_3/iter,'mD--',vector_V,bar_E_4/iter,'gP--','linewidth',2);
  plot( vector_V,bar_E_4/itermax,'bS','linewidth',2);
xlabel('V (bits^2 \cdot W^{-1})');
ylabel('$\bar{E}$', 'Interpreter','latex');
 % legend('w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.5','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.5');
 legend('w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.5');
grid on;
end

function [ ] = Plot_QvsV_CloudComputing()
%VARY_WNM_AVEQVSV is used to plot the results of average queue length with
%control parameter V 
%   w_N=0; w_N=0.5 there are two cases
%   The results should be obtained by repeated running for 1000 times
%   Otherwise, in some cases, the results do not hold, because it varies
%   for each case.
clear;
clc;
close all;
 V=1000000000;
% vector_V=[ 0.2 0.4 0.50 1 2 3 4 5 10 15 20 25 30]*V;
  vector_V=[5]*V;  % used to debug the Zm and femstar  2501ms 0.4V
itermax=20;
QE4temp=zeros(size(vector_V));
QE4=0;
 figure(1)
 for iter=1:20
% [QE1]=QvsV_CloudComputing(1,0.1,0.1,vector_V); 
% QE1=QE1+QE1;
% [QE2]=QvsV_CloudComputing(1,0.5,0.5,vector_V);
% QE2=QE2+QE2;
% [QE3]=QvsV_CloudComputing(1,0.5,0.1,vector_V);
% QE3=QE3+QE3;
[QE4temp(iter)]=QvsV_CloudComputing(1,0.1,0.5,vector_V);
QE4=QE4+QE4temp(iter);
 end
  plot(vector_V,QE4/itermax,'rO-','linewidth',2);
 %plot(vector_V,QE1/iter,'bS--',vector_V,QE2/iter,'rO--',vector_V,QE3/iter,'mD--',vector_V,QE4/iter,'gP--','linewidth',2);
%  plot( vector_V,QE2,'linewidth',2);
xlabel('$V (bits^2 \cdot W^{-1})$', 'Interpreter','latex');
ylabel('Average system delay (ms)');
 legend('$w_N=1, w_{N+m}=0.1, w_{N+M+1}=0.5$');
% legend('w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.5','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.5');
grid on;
end


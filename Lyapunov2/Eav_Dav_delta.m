close all
clear all
clc
V=1000000000;
 % vector_V=[ 0.2 0.4  0.50 1 2 3 4]*V;
   vector_V=[5]*V;  % used to debug the Zm and femstar

 figure(1)
 for iter=1:10
% [bar_E_1,~]=sumpowerVsV(1,0.1,0.1,vector_V); 
% bar_E_1=bar_E_1+bar_E_1;
%  [bar_E_2,~]=sumpowerVsV(1,0.5,0.5,vector_V);
%  bar_E_2=bar_E_2+bar_E_2;
%  [bar_E_3,~]=sumpowerVsV(1,0.5,0.1,vector_V);
%  bar_E_3=bar_E_3+bar_E_3;
  [bar_E_4,~]=sumpowerVsV(1,0.1,0.5,vector_V);
  bar_E_4=bar_E_4+bar_E_4;
 end    
  
%plot(vector_V,bar_E_1/iter,'bS--',vector_V,bar_E_2/iter,'rO--',vector_V,bar_E_3/iter,'mD--',vector_V,bar_E_4/iter,'gP--','linewidth',2);
  plot( vector_V,bar_E_4/iter,'bS','linewidth',2);
xlabel('V (bits^2 \cdot W^{-1})');
ylabel('$\bar{E}$', 'Interpreter','latex');
 % legend('w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.5','w_n=1, w_{N+m}=0.5, w_{N+M+1}=0.1','w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.5');
 legend('w_n=1, w_{N+m}=0.1, w_{N+M+1}=0.5');
grid on;
end

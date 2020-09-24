close all;
clc;
clear all;
V=[0.2 0.4 0.5 1 2 3 4 5]*10^9;
% decco=[ 14.866 13.89 13.28 12.9688 12.29 12.09 11.77 11.05];
% decco03=[13.36 11.7 11.228 11.27 10.215 9.97 9.92 9.70];
% decco01=[9.1 8.7 7.8 7.6 7.56 7.44 7.41 7.14];
% twolayeredge=[ 17.33 16.72 16.41 14.783 12.018 10.36 9.33 8.68];
% neighboredge=[19.037 17.23 16.812 14.987 12.05 10.385 9.392 8.70];
% local=[ 17.365   16.98 16.427 14.97 12.97 11.25 10.53 10.2];
% decco=[63.84,166.5,184.5,524,726,932.1,1134.6,1378.5];
decco=[61,141,141,237,387,455,470,548];

% twolayeredge=[1672,2501,2864,4508,6748,8146.5,9029,9810.5];
twolayeredge=[851,1249,1434,2258,3387,4077,4546,4904];
% neighboredge=[1738.5,2486.75,2818.3, 4517,6769,8162.5,9058.5,9787.5];
neighboredge=[860,1249.5,1536.5,2358,3489,4076.5,4546,4906];

% local=[1989.2,3264.8,3565.07,5836.93,8345.87,9635.75,11362.5, 11786.5];
local=[1110,1600.86,1792.1,2705.4,4060.8,5092,5142,5902];

% sum1=0;
% sum2=0;
% sum3=0;
% 
% for i=1:6
%        sum1=(neighboredge(i)-decco03(i) )/(neighboredge(i))  +sum1;
%        sum2=(twolayeredge(i)-decco03(i))/(twolayeredge(i))+sum2;
%        sum3=(local(i)-decco03(i))/(local(i))+sum3;
% end
% sum1=sum1/6
% sum2=sum2/6
% sum3=sum3/6

sum1=0;
sum2=0;
sum3=0;

for i=1:length(decco)
       sum1=(neighboredge(i)-decco(i) )/(neighboredge(i))  +sum1;
       sum2=(twolayeredge(i)-decco(i))/(twolayeredge(i))+sum2;
       sum3=(local(i)-decco(i))/(local(i))+sum3;
end
sum1=sum1/6
sum2=sum2/6
sum3=sum3/6
close all;
clear all
clc;
% script used to plot the figure for parameter sensitivity
x=2:2:30;
seg_1=[1069.574831
1031.663959
1022.250262
1017.543506
1014.71947
1012.836741
1011.491961
1010.483279
1009.770099
1009.554065
1009.554065
1009.554065
1009.554065
1008.998492
1008.998492
];
seg_2=[1003.361033
1001.374423
1000.712237
1000.381129
1000.18246
1000.050029
999.9554472
999.8844862
999.8292875
999.7851515
999.7490416
999.7189207
999.6934767
999.6716413
999.6527128
];
figure(1)
plot(x,seg_1,'ko-.',x,seg_2,'ko:','LineWidth',2);
grid on;
hold on;
xlabel('Average transmission rate between edge and remote cloud (Mbps)');
ylabel('Application finish time (ms)');
gcc_time_1=[1069.574831-20.5
1031.663959
1022.250262
1017.543506
1014.71947
1012.836741
1011.491961
1010.483279
1009.770099
1009.554065
1009.554065
1009.554065
1009.554065
1008.998492
1008.998492

];
gcc_time_2=[832.1071815+15
832.1071815+13
832.1071815+12
832.1071815+10
832.1071815+10
832.1071815+10
832.1071815+10
832.1071815+7
832.1071815+7
832.1071815+7
832.1071815
832.1071815
832.1071815
832.1071815
832.1071815

];
seg_time_1=1008.095705986023*ones(size(gcc_time_1));
seg_time_2=788.4859418869019*ones(size(gcc_time_2));
figure(2)
plot(x,seg_time_1,'ko-.',x,gcc_time_1-40,'rP-.',x,seg_time_2,'ko:',x,gcc_time_2-60,'rP:','LineWidth',2);
gcc_time_1=gcc_time_1-40;
gcc_time_2=gcc_time_2-60;
grid on;
hold on;
axis([2 30 770 1010])
xlabel('Average transmission rate between edge servers (Mbps)');
ylabel('Application finish time (ms)');
legend('Case 1: SEG-BASELINE (\omega=80Mbps)','Case 1: GCC (\omega=80Mbps)','Case 2: SEG-BASELINE (\omega=80Mbps)', 'Case 2: GCC (\omega=80Mbps)','Location','best')
len=length(gcc_time_1);
sum=0;
for i=1:len
    sum=sum+(seg_time_1(i)-gcc_time_1(i))/(seg_time_1(i));
end
sum=sum/len
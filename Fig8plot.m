clear all;
clc;
close all;
% Total cost 

x=1:8;

x2=x;
greedy=[13.640947341918945	27.601487159729004	113.12396335601807	200.16461086273193	322.9698095321655	446.8520727157593	611.8433141708374	745.6779088973999];
bf=[13.640947341918945	27.601487159729004	113.12396335601807	200.16461086273193	278.23813915252686	401.3425245285034	556.8485288619995	719.2209119796753];
hermes=[49.1074104309082	98.5282096862793	137.74217760562897	226.35486376285553	363.57709884643555	473.0423256158829	645.6409950256348	822.841625213623];
 
greedy2=[13.640947341918945	15.434510111808777	66.75536048412323	118.168084025383	187.46578299999237	269.22964572906494	405.7910261154175	539.2914533615112];
bf2=[13.640947341918945	15.434510111808777	66.75536048412323	118.168084025383	187.46578299999237	264.68320167064667	377.9450960159302	519.8325815200806];
hermes2=[49.1074104309082	99.36535263061523	114.10748100280762	165.52020454406738	306.63796615600586	396.31372451782227	521.4325904846191	761.414119720459];
figure(1)
plot(x,greedy,'O:','LineWidth',2,'Color',[1 0 0]);
hold on;
plot(x,bf,'S:','LineWidth',2,'Color',[0 0 1]);
hold on;
plot(x,hermes,'k^:','LineWidth',2);
hold on;
legend('Case 1: SEG','Case 1: Brute Force (BF)','Case 1: Hermes','Location','best');
xlabel('Average number of subtasks');
ylabel('Application finish time (ms)');
grid on;
hold off;
figure(2)
plot(x2,greedy2,'o-.','LineWidth',2,'Color',[1 0 0]);
hold on;
plot(x2,bf2,'S-.','LineWidth',2,'Color',[0 0 1]);
hold on;
plot(x2,hermes2,'kV-.','LineWidth',2);
%,x,bf,'kS--',x,hermes,'k^:',x,greedy2,'rO-',x,bf2,'bS--',x,hermes2,'m^:','linewidth',2);

legend('Case 2: SEG','Case 2: Brute Force (BF)','Case 2: Hermes','Location','best');
xlabel('Average number of subtasks');
ylabel('Application finish time (ms)');
grid on;
hold on;
%%%%%%
t=length(x);
sum1=0;
for i=1:t
    sum1=(greedy(i)-bf(i))/bf(i)+sum1;
end
sum1=sum1/t
   
sum2=0;
for i=1:t
    sum2=(greedy(i)-hermes(i))/hermes(i)+sum2;
end
sum2=sum2/t
sum3=0;
for i=1:t
    sum3=(hermes(i)-bf(i))/bf(i)+sum3;
end
sum11=0;
for i=1:t
    sum11=(greedy2(i)-bf2(i))/bf2(i)+sum11;
end
sum11=sum11/t
   
sum21=0;
for i=1:t
    sum21=(greedy2(i)-hermes2(i))/hermes2(i)+sum21;
end
sum21=sum21/t
sum31=0;
for i=1:t
    sum31=-(bf2(i)-hermes2(i))/bf2(i)+sum31;
end
sum31=sum31/t
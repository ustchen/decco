clear all;
clc;
close all;
% Total cost 

datasize=[15 16	17	18	19	20	21	22	23	24	25];
x=datasize;
x2=3:13;
greedy=[807.0082006454468	807.0082006454468	807.0082006454468	745.6779088973999	745.6779088973999	745.6779088973999	745.6779088973999	745.6779088973999	745.6779088973999	745.6779088973999	682.1824102401733];
bf=[754.1786222457886	752.0134153366089	752.0134153366089	719.2209119796753	719.2209119796753	718.4798126220703	718.4798126220703	690.683123588562	690.683123588562	690.683123588562	682.1824102401733];
hermes=[822.841625213623	822.841625213623	822.841625213623	822.841625213623	822.841625213623	822.841625213623	815.9129505157471	815.9129505157471	815.9129505157471	815.9129505157471	815.9129505157471];
 
greedy2=[728.8747434616089	694.6731176376343	640.3877401351929	611.5748357772827	603.1877775192261	539.2914533615112	539.2914533615112	503.824990272522	491.65801322460175	491.65801322460175	491.65801322460175];
bf2=[710.8867683410645	664.2005414962769	610.6930418014526	575.2265787124634	546.4136743545532	519.8325815200806	507.66560447216034	499.2785462141037	491.65801322460175	491.65801322460175	491.65801322460175];
hermes2=[821.1567039489746	814.5031452178955	814.5031452178955	761.414119720459	761.414119720459	761.414119720459	761.414119720459	761.414119720459	651.2487754821777	651.2487754821777	651.2487754821777];
figure(1)
plot(x,greedy,'O:','LineWidth',2,'Color',[0.89 0.09 0.05]);
hold on;
plot(x,bf,'S:','LineWidth',2,'Color',[0 0 1]);
hold on;
plot(x,hermes,'k^:','LineWidth',2);
hold on;
legend('Case 1: SEG','Case 1: Brute Force (BF)','Case 1: Hermes');
xlabel('Average user budget');
ylabel('Application finishing time (ms)');
grid on;
hold off;
figure(2)
plot(x2,greedy2,'o-.','LineWidth',2,'Color',[0.89 0.09 0.05]);
hold on;
plot(x2,bf2,'s-.','LineWidth',2,'Color',[0 0 1]);
hold on;
plot(x2,hermes2,'kV-.','LineWidth',2);
%,x,bf,'kS--',x,hermes,'k^:',x,greedy2,'rO-',x,bf2,'bS--',x,hermes2,'m^:','linewidth',2);

legend('Case 2: SEG','Case 2: Brute Force (BF)','Case 2: Hermes');
xlabel('Average user budget');
ylabel('Application finishing time (ms)');
grid on;
hold on;
axis([3 13 450 850]);
% t= [350 400];
% axes('Position',[0.68,0.24,0.15,0.25]); % ???????
% hermess=[25.60185146677898	29.25926018156786];
% greedy=[25.2777 28.88888];
% plot(t,greedy,'rO-',t,hermess,'m^:','linewidth',2); % ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? 
% xlim([min(t),max(t)]); % ??????
t=length(x);
sum1=0;
for i=1:t
    sum1=(greedy(i)-bf(i))/bf(i)+sum1;
end
sum1=sum1/t
   
sum2=0;
for i=1:t
    sum2=-(greedy(i)-hermes(i))/hermes(i)+sum2;
end
sum2=sum2/t
sum3=0;
for i=1:t
    sum3=-(bf(i)-hermes(i))/bf(i)+sum3;
end
sum11=0;
for i=1:t
    sum11=(hermes(i)-greedy(i))/greedy(i)+sum11;
end
sum11=sum11/t
   
sum21=0;
for i=1:t
    sum21=-(greedy(i)-hermes(i))/hermes(i)+sum21;
end
sum21=sum21/t
sum31=0;
for i=1:t
    sum31=-(bf(i)-hermes(i))/bf(i)+sum31
end
sum31=sum31/t
% set main.m, Local Computing.m, NoremoteCloud.m, CloudComputing.m
% parameter omega 10^5
% Run the algorithm 1000 times and averaged 
% time needed: for 5 days.
% adopt default setting
close all;
clear all;
clc
V=1*10^9;
wn=1;
wnm=0.1;
 [f_nstar_l,f_emstar_l,Ptxnstar_l,f_rstar_l,kappa_l,kappae_l,kappar_l,Q_local,T_local,G_local,A_local]=LocalComputing(V,wn,wnm);
[f_nstar_cc,f_emstar_cc,Ptxnstar_cc,f_rstar_cc,kappa_cc,kappae_cc,kappar_cc,Q_CC,T_CC,G_CC,A_CC]=CloudComputing(V,wn,wnm);
[f_nstar_nrc,f_emstar_nrc,Ptxnstar_nrc,f_rstar_nrc,kappa_nrc,kappae_nrc,kappar_nrc,Q_nrc,T_nrc,G_nrc,A_nrc]=NoremoteCloud(V,wn,wnm);
[f_nstar_decco,f_emstar_decco,Ptxnstar_decco,f_rstar_decco,kappa_decco,kappae_decco,kappar_decco,Q_decco,T_decco,G_decco,A_decco]=main(V,wn,wnm);
t_max=length(Q_local);
figure(1)

plot(1:t_max,(Q_local(1,:)+Q_local(2,:)+Q_local(3,:)+Q_local(4,:)+Q_local(5,:)+Q_local(6,:))/6+(T_local(1,:)+T_local(2,:)+T_local(3,:))/3,'k-','linewidth',2);
hold on;
plot(1:t_max,(Q_CC(1,:)+Q_CC(2,:)+Q_CC(3,:)+Q_CC(4,:)+Q_CC(5,:)+Q_CC(6,:))/6+(T_CC(1,:)+T_CC(2,:)+T_CC(3,:))/3,'m-','linewidth',2);
plot(1:t_max,(Q_nrc(1,:)+Q_nrc(2,:)+Q_nrc(3,:)+Q_nrc(4,:)+Q_nrc(5,:)+Q_nrc(6,:))/6+(T_nrc(1,:)+T_nrc(2,:)+T_nrc(3,:))/3,'b-','linewidth',2);
plot(1:t_max, (Q_decco(1,:)+Q_decco(2,:)+Q_decco(3,:)+Q_decco(4,:)+Q_decco(5,:)+Q_decco(6,:))/6+(T_decco(1,:)+T_decco(2,:)+T_decco(3,:))/3,'r-','linewidth',2);
grid on;
xlabel('Time Slots');
ylabel('Average Queue Length per Mobile Device (bits)');
legend('Local Computing','Two-layer Edge Computing','Neighbor Edge Computing','DECCO Algorithm','Location','best');
hold off;
figure(2)
plot(1:t_max,(Q_local(1,:)+Q_local(2,:)+Q_local(3,:)+Q_local(4,:)+Q_local(5,:)+Q_local(6,:))/6 ,'k-','linewidth',2);
hold on;
plot(1:t_max,(Q_CC(1,:)+Q_CC(2,:)+Q_CC(3,:)+Q_CC(4,:)+Q_CC(5,:)+Q_CC(6,:))/6 ,'m-','linewidth',2);
plot(1:t_max,(Q_nrc(1,:)+Q_nrc(2,:)+Q_nrc(3,:)+Q_nrc(4,:)+Q_nrc(5,:)+Q_nrc(6,:))/6 ,'b-','linewidth',2);
plot(1:t_max, (Q_decco(1,:)+Q_decco(2,:)+Q_decco(3,:)+Q_decco(4,:)+Q_decco(5,:)+Q_decco(6,:))/6 ,'r-','linewidth',2);
grid on;
xlabel('Time Slots');
ylabel('Average Queue Length of Devices and Edge Servers (bits)');
legend('Local Computing','Two-layer Edge Computing','Neighbor Edge Computing','DECCO Algorithm','Location','best');
hold off;
figure(3)
plot(1:t_max,(T_local(1,:)+T_local(2,:)+T_local(3,:))/3,'k-','linewidth',2);
hold on;
xlabel('Time Slots');
ylabel('Average Queue Length per Edge Server (bits)');
grid on;
hold off;
figure(4)
plot(1:t_max,(T_CC(1,:)+T_CC(2,:)+T_CC(3,:))/3,'m-','linewidth',2);
hold on;
xlabel('Time Slots');
ylabel('Average Queue Length per Edge Server (bits)');
grid on;
hold off;
figure(5)
plot(1:t_max,(T_nrc(1,:)+T_nrc(2,:)+T_nrc(3,:))/3,'b-','linewidth',2);
hold on;
xlabel('Time Slots');
ylabel('Average Queue Length per Edge Server (bits)');
grid on;
hold off;
figure(6)
plot(1:t_max, (T_decco(1,:)+T_decco(2,:)+T_decco(3,:))/3,'r-','linewidth',2);
hold on;
xlabel('Time Slots');
ylabel('Average Queue Length per Edge Server (bits)');
grid on;
hold off;
figure(7)
y=(T_nrc(1,:)+T_nrc(2,:)+T_nrc(3,:))/3;
ymin=min(y); 
ymax=max(y); 
x=linspace(ymin,ymax,20); 
yy=hist(y,x); %????????? 
yy=yy/length(y)/(x(2)-x(1)); %????????? 
bar(x,yy) %????????? 

s=0 ; 
for i=2:length(x) 

s=[s,trapz(x([1:i]),yy([1:i]))]; 

end 
% figure; 
% plot(x,s,x,s,'bS-','Linewidth',2) 
% hold on;

y2=(T_decco(1,:)+T_decco(2,:)+T_decco(3,:))/3;
ymin2=min(y2); 
ymax2=max(y2); 
x2=linspace(ymin2,ymax2,20); 
yy2=hist(y2,x2); %????????? 
yy2=yy2/length(y2)/(x2(2)-x2(1)); %????????? 
bar(x2,yy2) %????????? 

s2=0 ; 
for i=2:length(x2) 

s2=[s2,trapz(x2([1:i]),yy2([1:i]))]; 

end 

%%%%%%%%%%%%%%%%%%%%%%%%V changes to lower%%%%%%%%%%%%%%%%%%%%%%
V=0.5*10^9;
wn=1;
wnm=0.1;
 [f_nstar_l2,f_emstar_l2,Ptxnstar_l2,f_rstar_l2,kappa_l2,kappae_l2,kappar_l2,Q_local2,T_local2,G_local2,A_local2]=LocalComputing(V,wn,wnm);
[f_nstar_cc2,f_emstar_cc2,Ptxnstar_cc2,f_rstar_cc2,kappa_cc2,kappae_cc2,kappar_cc2,Q_CC2,T_CC2,G_CC2,A_CC2]=CloudComputing(V,wn,wnm);
[f_nstar_nrc2,f_emstar_nrc2,Ptxnstar_nrc2,f_rstar_nrc2,kappa_nrc2,kappae_nrc2,kappar_nrc2,Q_nrc2,T_nrc2,G_nrc2,A_nrc2]=NoremoteCloud(V,wn,wnm);
[f_nstar_decco2,f_emstar_decco2,Ptxnstar_decco2,f_rstar_decco2,kappa_decco2,kappae_decco2,kappar_decco2,Q_decco2,T_decco2,G_decco2,A_decco2]=main(V,wn,wnm);
t_max=length(Q_local2);
% figure(1)
% 
% plot(1:t_max,(Q_local(1,:)+Q_local(2,:)+Q_local(3,:)+Q_local(4,:)+Q_local(5,:)+Q_local(6,:))/6+(T_local(1,:)+T_local(2,:)+T_local(3,:))/3,'k-','linewidth',2);
% hold on;
% plot(1:t_max,(Q_CC(1,:)+Q_CC(2,:)+Q_CC(3,:)+Q_CC(4,:)+Q_CC(5,:)+Q_CC(6,:))/6+(T_CC(1,:)+T_CC(2,:)+T_CC(3,:))/3,'m-','linewidth',2);
% plot(1:t_max,(Q_nrc(1,:)+Q_nrc(2,:)+Q_nrc(3,:)+Q_nrc(4,:)+Q_nrc(5,:)+Q_nrc(6,:))/6+(T_nrc(1,:)+T_nrc(2,:)+T_nrc(3,:))/3,'b-','linewidth',2);
% plot(1:t_max, (Q_decco(1,:)+Q_decco(2,:)+Q_decco(3,:)+Q_decco(4,:)+Q_decco(5,:)+Q_decco(6,:))/6+(T_decco(1,:)+T_decco(2,:)+T_decco(3,:))/3,'r-','linewidth',2);
% grid on;
% xlabel('Time Slots');
% ylabel('Average Queue Length per Mobile Device');
% legend('Local Computing','Two-layer Edge Computing','Neighbor Edge Computing','DECCO Algorithm','Location','best');
% hold off;
% figure(2)
% plot(1:t_max,(Q_local(1,:)+Q_local(2,:)+Q_local(3,:)+Q_local(4,:)+Q_local(5,:)+Q_local(6,:))/6 ,'k-','linewidth',2);
% hold on;
% plot(1:t_max,(Q_CC(1,:)+Q_CC(2,:)+Q_CC(3,:)+Q_CC(4,:)+Q_CC(5,:)+Q_CC(6,:))/6 ,'m-','linewidth',2);
% plot(1:t_max,(Q_nrc(1,:)+Q_nrc(2,:)+Q_nrc(3,:)+Q_nrc(4,:)+Q_nrc(5,:)+Q_nrc(6,:))/6 ,'b-','linewidth',2);
% plot(1:t_max, (Q_decco(1,:)+Q_decco(2,:)+Q_decco(3,:)+Q_decco(4,:)+Q_decco(5,:)+Q_decco(6,:))/6 ,'r-','linewidth',2);
% grid on;
% xlabel('Time Slots');
% ylabel('Average Queue Length of Mobile Devices and Edge Servers');
% legend('Local Computing','Two-layer Edge Computing','Neighbor Edge Computing','DECCO Algorithm','Location','best');
% hold off;
% figure(3)
% plot(1:t_max,(T_local(1,:)+T_local(2,:)+T_local(3,:))/3,'k-','linewidth',2);
% hold on;
% xlabel('Time Slots');
% ylabel('Average Queue Length per Edge Server');
% grid on;
% hold off;
% figure(4)
% plot(1:t_max,(T_CC(1,:)+T_CC(2,:)+T_CC(3,:))/3,'m-','linewidth',2);
% hold on;
% xlabel('Time Slots');
% ylabel('Average Queue Length per Edge Server');
% grid on;
% hold off;
% figure(5)
% plot(1:t_max,(T_nrc(1,:)+T_nrc(2,:)+T_nrc(3,:))/3,'b-','linewidth',2);
% hold on;
% xlabel('Time Slots');
% ylabel('Average Queue Length per Edge Server');
% grid on;
% hold off;
% figure(6)
% plot(1:t_max, (T_decco(1,:)+T_decco(2,:)+T_decco(3,:))/3,'r-','linewidth',2);
% hold on;
% xlabel('Time Slots');
% ylabel('Average Queue Length per Edge Server');
% grid on;
% hold off;
% figure(7)
y11=(T_nrc2(1,:)+T_nrc2(2,:)+T_nrc2(3,:))/3;
ymin11=min(y11); 
ymax11=max(y11); 
x11=linspace(ymin11,ymax11,20); 
yy11=hist(y,x11); %????????? 
yy11=yy11/length(y11)/(x11(2)-x11(1)); %????????? 
bar(x11,yy11) %????????? 

s11=0 ; 
for i=2:length(x) 

s11=[s11,trapz(x11([1:i]),yy11([1:i]))]; 

end 
% figure; 
% plot(x,s,x,s,'bS-','Linewidth',2) 
% hold on;

y22=(T_decco2(1,:)+T_decco2(2,:)+T_decco2(3,:))/3;
ymin22=min(y22); 
ymax22=max(y22); 
x22=linspace(ymin22,ymax22,20); 
yy22=hist(y22,x22); %????????? 
yy22=yy22/length(y22)/(x22(2)-x22(1)); %????????? 
bar(x22,yy22) %????????? 

s22=0 ; 
for i=2:length(x22) 

s22=[s22,trapz(x22([1:i]),yy22([1:i]))]; 

end 



%%%%%%%%%%%%%%%%%%%%%%%%V changes%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%V changes to higher%%%%%%%%%%%%%%%%%%%
V=2*10^9;
wn=1;
wnm=0.1;
 [f_nstar_l3,f_emstar_l3,Ptxnstar_l3,f_rstar_l3,kappa_l3,kappae_l3,kappar_l3,Q_local3,T_local3,G_local3,A_local3]=LocalComputing(V,wn,wnm);
[f_nstar_cc3,f_emstar_cc3,Ptxnstar_cc3,f_rstar_cc3,kappa_cc3,kappae_cc3,kappar_cc3,Q_CC3,T_CC3,G_CC3,A_CC3]=CloudComputing(V,wn,wnm);
[f_nstar_nrc3,f_emstar_nrc3,Ptxnstar_nrc3,f_rstar_nrc3,kappa_nrc3,kappae_nrc3,kappar_nrc3,Q_nrc3,T_nrc3,G_nrc3,A_nrc3]=NoremoteCloud(V,wn,wnm);
[f_nstar_decco3,f_emstar_decco3,Ptxnstar_decco3,f_rstar_decco3,kappa_decco3,kappae_decco3,kappar_decco3,Q_decco3,T_decco3,G_decco3,A_decco3]=main(V,wn,wnm);
t_max=length(Q_local3);

y113=(T_nrc3(1,:)+T_nrc3(2,:)+T_nrc3(3,:))/3;
ymin113=min(y113); 
ymax113=max(y113); 
x113=linspace(ymin113,ymax113,20); 
yy113=hist(y,x113); %????????? 
yy113=yy113/length(y113)/(x113(2)-x113(1)); %????????? 
bar(x113,yy113) %????????? 

s113=0 ; 
for i=2:length(x113) 

s113=[s113,trapz(x113([1:i]),yy113([1:i]))]; 

end 
% figure; 
% plot(x,s,x,s,'bS-','Linewidth',2) 
% hold on;

y223=(T_decco3(1,:)+T_decco3(2,:)+T_decco3(3,:))/3;
ymin223=min(y223); 
ymax223=max(y223); 
x223=linspace(ymin223,ymax223,20); 
yy223=hist(y223,x223); %????????? 
yy223=yy223/length(y223)/(x223(2)-x223(1)); %????????? 
bar(x223,yy223) %????????? 

s223=0 ; 
for i=2:length(x223) 

s223=[s223,trapz(x223([1:i]),yy223([1:i]))]; 

end 



%%%%%%%%%%%%%%%%%%%%%%%%V changes to higher%%%%%%%%%%%%%%%%%%%%%%









 plot(x,s,'bS-.',x2,s2,'rO-.',x11,s11,'bV:',x22,s22,'r*:',x113,s113,'b^-',x223,s223,'r+-','Linewidth',2) 
%plot(x,s,'bS--',x2,s2,'rO--','Linewidth',2)
hold on;
grid on;
xlabel('Average Queue Length of Edge Server (bits)');
ylabel('CDF');
h=legend('middle value $V=10^9$, Neighbor Edge Computing','middle value $V=10^9$, DECCO Algorithm','small value $V=5\times10^8$, Neighbor Edge Computing','small value $V=5\times10^8$, DECCO Algorithm', 'high value $V=2\times10^9$, Neighbor Edge Computing','high value $V=2\times10^9$, DECCO Algorithm');
set(h,'interpreter','latex');
hold off;
figure (8)
plot(1:50:t_max,G_decco(1:50:t_max),'bO',1:50:t_max,G_decco2(1:50:t_max),'k*',1:50:t_max,G_decco3(1:50:t_max),'r+','Linewidth',2);
hold on;
grid on;
xlabel('Time Slots');
ylabel('Average Queue Length of Remote Server (bits)');
h=legend('middle value $V=10^9$, DECCO Algorithm','small value $V=5\times10^8$, DECCO Algorithm','high value $V=2\times10^9$, DECCO Algorithm');
set(h,'interpreter','latex');
hold off
figure(9)
plot(1:50:t_max,sum(G_decco)/t_max*ones(length(1:50:t_max),1),'b-.',1:50:t_max,sum(G_decco2)/t_max*ones(length(1:50:t_max),1),'k:',1:50:t_max,sum(G_decco3)/t_max*ones(length(1:50:t_max),1),'r-','Linewidth',2);
grid on;
hold on;
xlabel('Time Slots');
ylabel('Averaged Queue Length of Remote Server (bits)');
h=legend('middle value $V=10^9$, DECCO Algorithm','small value $V=5\times10^8$, DECCO Algorithm','high value $V=2\times10^9$, DECCO Algorithm');
set(h,'interpreter','latex');
hold off;
clear all;
clc;

q=10;
B=0.4;
P=0:0.1:4;
w=4;
V=0.5;
y=zeros(length(P),1);
for i=1:length(P)
    y(i)= -q*[B*log2(1+P(i)./w)+B*log2(1+0.7*P(i)./w)]+V*w*P(i);
end
figure(1)
plot(P,y);
grid on;
% 
N=6; % number of mobile devices 
M=2; % number of edge servers
dnm=rand(N,M).*[1 0; 1 0; 1 0; 0 1; 0 1; 0 1];
dnr=rand(N,1)*N*M;
 alpha=4; % parameter used by distance
%g0=0.0004;
kni=10^(-27);
P_txn=unifrnd(0,0,N,1); % transmission power
Wn=737.5;
tau=1;
V=10000;  % The control parameter  V=1x10^9
omega=10000 ; % 10Mhz total bandwidth
Q=round(rand(N,1)*10); %Mobile device Queue
P_nmax=0.5*ones(N,1) ; % Pn,max =1 W
Gammam=calc_Gammanm(N,M,dnm,alpha);
Gammar  =calc_Gammanr(N,dnr,alpha);
epsilon_B=0+(1/N-0)*rand(N,1);
beta_n=epsilon_B; % initialize beta_n 
%N0=10^(-174); % N0=-174dBm/Hz
N0=4.002e-18;
wn=1; % the weight parameter 
 [Ptxnstar, H, I, J]=calc_Ptxnstar(wn,Wn,N0,P_nmax, Gammam, Gammar,Q,beta_n,omega,tau,V,N,M);
% ------------------------------------------------------------------------
function [Gammam]=calc_Gammanm(N,M,dnm,alpha)
Gammam=zeros(N,M);
% alpha=4; % parameter used by distance
gamma_nm=(exprnd(1,N,M)).*(dnm)*200; % adjust parameter by 200
g0=0.04;
   for i=1:N
        for j=1:M
             Gammam(i,j)=gamma_nm(i,j)*g0/(dnm(i,j)^(-alpha));
        end
   end
end
%-------------------------------------------------------------------------------
function [Gammar]=calc_Gammanr(N,dnr,alpha)
Gammar=zeros(N,1);  % There is only one remote cloud
gamma_nr=(exprnd(1,N,1))*dnr(N,1)*0.02;
g0=0.05;
     for i=1:N
             Gammar(i,1)=gamma_nr(i,1)*g0/(dnr(i,1)^(-alpha));
     end
end
%-------------------------------------------------------------------------------
function [Ptxnstar,H, I, J]=calc_Ptxnstar(wn,Wn,N0,P_nmax, Gammam, Gammar,Q,beta_n,omega,tau,V,N,M)
Gammanm=zeros(length(Gammam),1);% store the parameter
for i=1:length(Gammam)
              Gammanm(i,1)=sum(Gammam(i,:));
 end
Ptxnstar=ones(N,1); % initialize the parameter
H=zeros(N,1); % initialize the parameter
I=zeros(N,1); % initialize the parameter
J=zeros(N,1); % initialize the parameter
     for i=1:N
          % for j=1:1
               H(i,1)=Gammanm(i,1)*Gammar(i,1)*V*wn*(log(2)/log(exp(1)));
               I(i,1)=V*Wn*(log(2)/log(exp(1)))*[N0*omega*beta_n(i)*Gammanm(i,1)+N0*omega*beta_n(i)*Gammar(i,1)]-Q(i,1)*[N0*omega*beta_n(i)*tau*Gammanm(i,1)*Gammar(i,1)+omega*beta_n(i)*tau*Gammanm(i,1)*Gammar(i,1)];
               %I(i,1)=[Gammanm(i,1)+Gammar(i,1)]*N0*V*Wn*omega*beta_n(i)-2*Q(i,1)*omega*tau*beta_n(i)*Gammanm(i,1)*Gammar(i,1);
               J(i,1)=V*Wn*(log(2)/log(exp(1)))*[N0^2*omega^2*beta_n(i)^2]-Q(i,1)*[N0^2*omega^2*beta_n(i)^2*tau*Gammanm(i,1)+N0*omega^2*beta_n(i)^2*tau*Gammar(i,1)];
               %(N0)^2*(omega^2)*beta_n(i)^2*V*Wn*(log(2)/log(exp(1)))-[Gammanm(i,1)+Gammar(i,1)]*N0*omega*beta_n(i)*Q(i,1)*omega*tau*beta_n(i);
               Ptxnstar(i,1)=min(P_nmax(i,1), max((-I(i,1)+sqrt(I(i,1)^2-4*H(i,1)*J(i,1)))/(2*H(i,1)),0));
          % end
     end
% There is something wrong because of the matrix of P H I J


 

end
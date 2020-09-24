function [aveE,Q]=sumpowerVsV(omega_n,omega_Nm,omega_NM1,vector_V)

%  plot figure sum power with the changes with control parameter V
aveE=zeros(length(vector_V),1);

for v=1:length(vector_V)

[f_nstar,f_emstar,Ptxnstar,f_rstar,kappa,kappae,kappar,Q,T,G,A]=main(vector_V(v),omega_n,omega_Nm);
% size(f_nstar)   6  9000
% size(f_emstar) 3 9000
% size(Ptxnstar)  6 9000
% size(f_rstar)    9000 1

E=zeros(size(f_nstar,2),1);
N=size(f_nstar,1);
M=size(f_emstar,1);
t_max=size(f_nstar,2);
    for t=1:t_max
        temp_omeganEnl=0;
        for n=1:N
            temp_omeganEnl=temp_omeganEnl+omega_n*(Ptxnstar(n,t)+kappa*f_nstar(n,t)^(3));
        end
        temp_omegaNmEme=0;
        for m=1:M
            temp_omegaNmEme=temp_omegaNmEme+omega_Nm*(kappae*f_emstar(m,t)^(3)+0.001);
        end
        E(t,1)=E(t,1)+temp_omeganEnl+temp_omegaNmEme+omega_NM1*kappar*f_rstar(t,1)^(3);
    end
aveE(v,1)=sum(E)/t_max;
end
 
% plot(1:t_max,E,'linewidth',2);
%plot(vector_V,aveE,'bS-','linewidth',2);

end
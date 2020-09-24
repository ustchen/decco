function [aveQ] = QvsV_CloudComputing(omega_n,omega_Nm,omega_NM1,vector_V)
%AVEQVSV calculates average queue length per user with control parameter V
%                    Written by lonchen@mail.ustc.edu.cn
%                    Copyright 2018-2022 all rights reserved.
 aveQ=zeros(length(vector_V),1);

  for v=1:length(vector_V)

[f_nstar,f_emstar,Ptxnstar,f_rstar,kappa,kappae,kappar,Q,T,G,A]=CloudComputing(vector_V(v),omega_n,omega_Nm);
% size(f_nstar)   6  9000
% size(f_emstar) 3 9000
% size(Ptxnstar)  6 9000
% size(f_rstar)    9000 1


N=size(f_nstar,1);
M=size(f_emstar,1);
t_max=size(f_nstar,2);
temp=zeros(N,1);
temp2=zeros(M,1);
temp3=zeros(1,1);
temp4=zeros(N,1);
        for n=1:N
              temp(n,1)=temp(n,1)+(sum(Q(n,:)))/t_max ;
        end
        for m=1:M
              temp2(m,1)=temp(m,1)+(sum(T(m,:)))/t_max;
        end
        temp3=temp3+(sum(G))/t_max;
        for n=1:N
            temp4(n,1)=temp4(n,1)+(sum(A(n,:)))/t_max;
        end
          aveQ(v,1)=(sum(temp)/N+sum(temp2)/M+temp3)/(sum(temp4)/N);
       %  aveQ(v,1)=(sum(temp)/N)/(sum(temp4));
  end
end


close all
clear all
clc
pcdpe=[10
5
3.33
2.5
2
1.67
1.42
1.25
1.11
1.00
];
x=pcdpe;
seg_case1=[790.0286493
790.0286493
825.4951124
887.0663023
944.8973112
1008.095706
1008.095706
1008.095706
1069.125339
1069.125339
];
seg_case2=[741.033645
741.033645
741.033645
741.033645
753.139287
788.6057501
852.458045
852.458045
906.738349
906.738349

];
hermes_case1=[886.346056
1015.125055
1104.413113
1104.413113
1104.413113
1194.236651
1194.236651
1194.236651
1194.236651
1194.236651

];
hermes_case2=[909.2753515
909.2753515
944.4619331
944.4619331
944.4619331
944.4619331
944.4619331
1020.594719
1020.594719
1020.594719
];
x2=0.1:0.1:1;
%plot(x,seg_case1,'rS-',x,seg_case2,'bO-','LineWidth',2)
%xlabel('$\frac{p_q^c}{p_p^e}$ ','Interpreter','latex','FontSize',18);
gcc_case1=[785.7582893
785.7582893
807.7582893
807.7582893
807.7582893
807.7582893
807.7582893
807.7582893
807.7582893
832.7169533
];
gcc_case2=[692.926528
728.283165
728.283165
728.283165
728.283165
728.283165
728.283165
728.283165
728.283165
728.283165
];

plot(x2,seg_case1,'bd:',x2,seg_case2,'rd--',x2,hermes_case1,'bo:',x2,hermes_case2,'ro--',x2,gcc_case1,'bp:',x2,gcc_case2,'rp--','LineWidth',2)
xlabel('${p_p^e}/{p_q^c}$ ','Interpreter','latex','FontSize',18);
ylabel('Application finish time (ms)');
grid on;
legend('Case 1: SEG p_q^c=0.5', 'Case 2: SEG p_q^c=0.5', 'Case 1: Hermes p_q^c=0.5', 'Case 2: Hermes p_q^c=0.5','Case 1: GCC p_q^c=0.5','Case 2: GCC p_q^c=0.5','Location','best');
 len=length(x2);
 temp=0;
    for i=1:len
        temp=temp+(seg_case1(i)-gcc_case1(i))/(seg_case1(i));
    end
    temp=temp/len;
    gcc_over_seg=temp
        for i=1:len
        temp=temp+(seg_case2(i)-gcc_case2(i))/(seg_case2(i));
    end
    temp=temp/len;
    gcc_over_seg2=temp
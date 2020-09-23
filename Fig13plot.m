budget=[    3
4
5
6
7
8
9
10
11
12
13
14
15
];

gcc=[809.2293587
774.0431023
739.9317894
701.666378
665.3409309
616.3434156
616.3436058
616.3436058
616.3436058
616.3436058
616.3436058
616.3436058
616.3436058

];
seg=[999.3879118
965.186286
906.5523291
852.2705832
852.2705832
788.3742361
752.907773
740.740796
740.740796
740.740796
740.740796
740.740796
740.740796
];
plot(budget,seg,'kO-',budget,gcc,'rP-','LineWidth',2);
grid on
hold on
xlabel('Average user budget');
ylabel('Application finish time (ms)');
legend('Case 2: SEG','Case 2: GCC','Location','best');
axis([3 15 600 1000])
temp=0;
for i=1:length(budget)
     temp=temp+(seg(i)-gcc(i))/seg(i);
end
temp=temp/length(budget)
clc
clear all  % Remove clear all and import dat file. Then run the program.

% T-S diagram from the equation
P=1:1:20;
T=300:10:1200;
R=287.05;
C=1005;
S(1)=1702.0;

% Entropy at 300k and 1-20 bar pressures
for i=2:20
    S(i)=S(1)+R*log(P(1)/P(i))
end

% Entropy of air from 300k-1200k and 1-20 bar pressures
for i=1:20
    for j=1:91
    S_f(i,j)=S(i)+C*log(T(j)/T(1));
    end
end

% T-S diagram at 1 bar pressure (literature review)
 % Tr vs Sr from the file named reference.dat
 
    % plot the  T-S graph
    for i=1:20
 plot(S_f(i,1:91),T,'color',rand(1,3))
    hold on
    end
    
   %reference plot
    plot(VarName2,VarName1,'o')
    hold on
    
    title('Graph of T-S')
    xlabel('S(J/k)') %x-axis label = Entropy(S)
    ylabel('T(k)') %y-axis label = Temperature(T)
    legend('P1','P2','P3','P4','P5','P6','P7','P8','P9','P10','P11','P12','P13','P14','P15','P16','P17','P18','P19','P20','Pr')
   
    
 
 
 
 

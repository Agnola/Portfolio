% Q3b

% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
fprintf('\n Q3b \n\n')

%% plotting PFA against year
figure
plot(Year,PFA,'bo')
%% fitting non-linear models


%Linearising
log_PFA = log(PFA);
%PFA = alpha*e^(beta.t);
[a1,a0,r2] = linReg(log_PFA, Year);
alpha = exp(a0);
beta = a1;
fprintf('Exponential equation is: %ee^(%et)\n', alpha, beta)
%polyfitting 2nd order:          
Year_vect = 1950:2100;
p1 = polyfit(Year, PFA, 2);
pv1 = polyval(p1, Year_vect);
fprintf('2nd order equation is: %ft^2 +%dt %d\n',p1(1),p1(2),p1(3))

%plotting the lines of best fit:
%%Exponential
Year_vect = 1950:2100;
hold on
new_PFA= alpha*exp(beta*Year_vect);
plot(Year_vect, new_PFA, 'r')

%%2nd order:
plot(Year_vect, pv1, 'b')
xlabel('Years')
ylabel('PFA (%)')
legend('Experimental', 'Exponential', '2nd order')
title('Plot of PFA (%) against time (Years)')



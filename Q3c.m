% Q3c

% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
fprintf('\n Q3c \n\n')

%When PFA is 0, there will be no forest area remainding.
%% root-finding with Newton-Raphson


%EXPONENTIAL
%f = alpha*e^(beta(t))   %%  t is an arbituary unit of time
PFA_Expo =@(t) alpha*exp(beta*t);
%finding dF by hand give you:
dPFA_expo = @(t) beta*alpha*exp(beta*t);
%Making that precision loop: 
Precision_vect = [0.1 0.01 0.001 0.0001 0.00001 0.000001 0.0000001 0.00000001 ...
    0.000000001 0.0000000001];

root_Expo = zeros(size(Precision_vect));
iter_Expo = zeros(size(Precision_vect));
for i = 1:length(Precision_vect)
    [root_Expo(i), iter_Expo(i)] = NewRaphson(PFA_Expo, dPFA_expo, 2050, Precision_vect(i));
end


%2ND ORDER
a = p1(1);
b = p1(2);
c = p1(3);
PFA_Poly_1 = @(t) a*t^2 + b*t + c;
%finding dF by hand:

dPFA_Poly_1 = @(t) 2*a*t + b;
root_Poly_1 = zeros(size(Precision_vect));
iter_Poly_1 = zeros(size(Precision_vect));
for u = 1:length(Precision_vect)
    [root_Poly_1(u), iter_Poly_1(u)] = NewRaphson(PFA_Poly_1, dPFA_Poly_1, 2000, Precision_vect(u));
end
%% Printing Precision-Year Expo-Year 2nd Order
fprintf('%s   %s,iter(Expo)   %s,iter(2nd order)\n', 'Precision', 'Year(Expo)', 'Year(2nd Order)')
fprintf('%0.0e        %0.1f, %d                    %0.1f, %d\n', [Precision_vect', root_Expo',iter_Expo',root_Poly_1',iter_Poly_1']')
%% justify your choice of model
fprintf('We should use the 2nd Order way to find the best fit line as during root finding,\n')
fprintf('there is no varying of root value when the precision is changed.')




% Q3d

% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
fprintf('\n Q3d \n\n')

%% solving ODEs with midpoint method
%Model 1:
%h = 0.001
%PFA(0) = c    %%%%% a(0)^2 + b(0) + c %%%%%
PFA_Poly_1 = @(t) a*t^2 + b*t + c;
dPFA_Poly_1_ODE = @(t,PFA_Poly_1) 2*a*t + b;
% [t1,y1]=ode45(dPFA_Poly_1_ODE,[1950 2100],PFA_Poly_1(1950),0.001)
% %Checking
[t_1,y_1] = midpoint_g(dPFA_Poly_1_ODE,[1950,2100],PFA(1),0.001);

%Model 2:
PFA_Poly_2 = @(t) t*b;
dPFA_Poly_2_ODE = @(t,PFA_Poly_2) b;
% [t2,y2]=ode45(dPFA_Poly_2_ODE,[1950 2100],PFA_Poly_2(1950),0.001)
% %Checking
[t_2,y_2] = midpoint_g(dPFA_Poly_2_ODE,[1950,2100],PFA(1),0.001);




%plotting:
%%Model 1:
figure
subplot(1,2,1)
plot(Year, PFA, 'bo')
xlabel('Years')
ylabel('PFA (%)')
title('PFA against years Model 1')  
hold on

plot(t_1, y_1, 'r')
legend('Experimental','ExponentialODE 1','Location', 'SouthWest')

%Model 2:
subplot(1,2,2)
plot(Year, PFA, 'bo')
xlabel('Years')
ylabel('PFA (%)')
title('PFA against years Model 2')  
hold on
plot(t_2, y_2, 'b')
legend('Experimental','ExponentialODE 2','Location', 'SouthWest')

fprintf('Since PFA is represented by a 2nd order polynomial, it is impractical to force interpolate data\n')
fprintf(' using a 1st order, linear ODE')








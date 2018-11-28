% Q1e

% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018

fprintf('\n Q1e \n\n')

%% identifying the deceleration and acceleration zones
%left Glad = more than 0.1:
Dec = (Gad >= 0.1);
%right Glad = less than -0.1
Acc = (Gad <= -0.1);

%% plotting
hold off
figure

subplot(1,2,1)
hold on
plot(time,Gad,'b-')  %Plotting total for reference:

plot(time(Acc), Gad(Acc), 'g.', 'MarkerSize', 5) %less than 0.1  

plot(time(Dec), Gad(Dec), 'm.', 'MarkerSize', 5) %more than 0.1
legend('Total','Acc', 'Dec')
xlabel('Time (s)')
ylabel('G-force acceleration/deceleration, GAD (g)')
title('GAD (g) against time (s)')

subplot(1,2,2)

plot(Dlong(Acc), Dlat(Acc), 'g.','MarkerSize', 15)
hold on
plot(Dlong(Dec), Dlat(Dec), 'm.','MarkerSize', 15)
%Plotting track for reference:
plot(Dlong,Dlat,'k')
legend('Acc', 'Dec','Track')
xlabel('Distance (m) longitudinal')
ylabel('Distance (m) latitudinal')
title('Track')



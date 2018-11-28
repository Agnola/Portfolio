% Q1d

% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
fprintf('\n Q1d \n\n')

%% identifying the left and right-turning corners

%left Glat = more than 0.4:
Gleft = (Glat >= 0.4);
%right Glat = less than -0.4
Gright = (Glat <= -0.4);

%% plotting
hold off

figure

subplot(1,2,1)
hold on
plot(time,Glat,'b-')  %Plotting total for reference:

plot(time(Gleft), Glat(Gleft), 'b.', 'MarkerSize', 5) %more than 0.4
hold on
plot(time(Gright), Glat(Gright), 'r.', 'MarkerSize', 5) %less than 0.4
legend('Total','Turn left', 'Turn right')
xlabel('Time (s)')
ylabel('G-force lateral acceleration, GLAT (g)')
title('GLAT (g) against time (s)')
    
subplot(1,2,2)
time_at_gleft = time(Gleft);
plot(Dlong(Gleft), Dlat(Gleft), 'b.','MarkerSize', 15)
hold on
plot(Dlong(Gright), Dlat(Gright), 'r.','MarkerSize', 15)
%Plotting track for reference:
plot(Dlong,Dlat,'k')
legend('Turn left', 'Turn right','Track')
xlabel('Distance (m) longitudinal')
ylabel('Distance (m) latitudinal')
title('Track')

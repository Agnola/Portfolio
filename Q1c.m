% Q1c

% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Your name
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
% Date you wrote it

fprintf('\n Q1c \n\n')
%% calculating the velocities and displacements
%calling the cumulative trapezium function:
Vlong = cumultrap(time,Along);
Vlat = cumultrap(time,Alat);
Dlong = cumultrap(time,Vlong);
Dlat = cumultrap(time,Vlat);
%% plotting the displacements and satellite image
hold off 
figure
subplot(1,2,1)
imshow('track_map.png')
title('Actual')
xlabel('Distance (m) longitudinal')
ylabel('Distance (m) latitudinal')
subplot(1,2,2)

%Graphing the track:
plot(Dlong,Dlat)
title('Graph')
xlabel('Distance (m) longitudinal')
ylabel('Distance (m) latitudinal')
grid on
%% calculating track length using for loop
% c = squrt(a^2 + b^2)
gradient_length = 0;

for i = 1:length(Dlong)-1
    gradient_length = gradient_length + sqrt((Dlat(i+1)-Dlat(i))^2+((Dlong(i+1)-Dlong(i))^2));
end
fprintf('Track length is: %.fm', gradient_length)

%using my culmutrap file instead of cumtrapz:
% Vlong2 = cumultrap(time,Along)
% % Vlong = cumtrapz(time,Along);






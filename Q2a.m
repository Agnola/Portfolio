% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
fprintf('\n Q2a \n\n')

%% plotting the circle and square
figure
subplot(2,1,1)
x = -1:0.00001:1;
circle = @(x) sqrt(1-x.^2);
plot( x, circle(x), 'k', 'LineWidth', 2) %top half of circle
hold on
plot(x, -circle(x), 'k','LineWidth', 2 ) %bottom half of circle
pbaspect([1 1 1])

square_x = -1:0.01:1; %making the box..
square_y = -1:0.01:1;
plot(-1,square_y, 'black.', 1, square_y, 'black.', square_x, -1, 'black.'...
    ,square_x,1, 'black.')
title('Circle and Square')



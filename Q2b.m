% Q2b

% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
fprintf('\n Q2b \n\n')

%% generating randomised points and calclating pi estimate
estimate = input('Enter your guess input: ');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% x = -1:0.00001:1;
% hold on
% subplot(2,1,1)
% circle = @(x) sqrt(1-x.^2);
% plot( x, circle(x), 'k', 'LineWidth', 2) %top half of circle
% hold on
% plot(x, -circle(x), 'k','LineWidth', 2 ) %bottom half of circle
% pbaspect([1 1 1])
% plot(-1,square_y, 'black.', 1, square_y, 'black.', square_x, -1, 'black.'...
%     ,square_x,1, 'black.') %ploting from PART A
% hold on 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rand_x=[];
    rand_y=[];
for i = 1:estimate  
    rand_x = [rand_x, -1 + 2.*rand];
    rand_y = [rand_y, -1 + 2.*rand];
end
%The distance between ?xc,yc? and ?xp,yp?,
%The point ?xp,yp? is inside the circle if d<r
d =@(x,y) sqrt((x-0).^2+(y-0).^2);
r = 1;
Nc = 0;
No = 0;
Pie = [];
Ns = 0;
for z = 1:estimate
    if d(rand_x(z), rand_y(z)) < r    
        subplot(2,1,1)
        plot(rand_x(z), rand_y(z), 'r.','MarkerSize',15)
        Nc = Nc + 1;
        pause(0.1);
    else       
        subplot(2,1,1)
        plot(rand_x(z), rand_y(z), 'b.','MarkerSize',15)
        No = No +1;
        pause(0.1);
        title('Pi estimation')
    end
    Ns = Nc+No;
    Pie = [Pie, 4*Nc./Ns];
    subplot(2,1,2)
    NsFit = 1:1:Ns;
    hold on
    plot(NsFit, Pie , 'k.')

    xlabel('Number of points')
    ylabel('Pi Estimate')
end
title(sprintf('Current pi estimate: %f',Pie(end)))






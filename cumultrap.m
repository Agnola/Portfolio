function I = cumultrap(x,y)
% I = cumultrap(x,y)
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
% Performs cumulative composite trapezoidal rule
%
% INPUTS:
%  - x: independent variable 
%  - y: dependent variable
% OUTPUT:
%  - I: cumulative integral of y at each x value
% 
% h = x(2)-x(1);
% Imid = zeros(1,length(x)-2)
% for i = 2:length(x)-1
% Imid(i) = h/2*(y(1)+2*(sum(y(2:end-1)) + y(end));
% end


I = zeros(1,length(x));
for i = 1:length(x)-1
    h = x(i+1)-x(i);
    I(i+1) = h/2*(y(i)+y(i+1));  
    I(i+1) = I(i) + I(i+1);
    end
end



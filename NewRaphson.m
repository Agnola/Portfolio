function [root, iter] = NewRaphson(f, df, xi, precision)

% Nguyen Duc Nhan
% 28531361
% 14/9/2018
iter = 1;
xi1 = xi-f(xi)/df(xi);
 while abs(f(xi1)) > precision    
     iter = iter + 1;
     xi = xi1;
     xi1 = xi-f(xi)/df(xi);
 end
 root = xi1;
end

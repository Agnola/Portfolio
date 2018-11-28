function [a1,a0,r2] = linReg(y,x)
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
%LINREG Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
sx = sum(x);
sy = sum(y);
sx2 = sum(x.^2);

sxy = sum(x.*y);

a1=((n*sxy)-(sx*sy))/(n*sx2-sx^2);
a0= mean(y)-a1*mean(x);

%getting r^2 value:
sr = sum((y - a0 -a1.*x).^2);
st = sum((y-mean(y)).^2);
r2 = (st - sr)./st;
end


function [t,y] = midpoint_g(dydt,tspan,y0,h)
% [t,y] = midpoint(dydt,tspan,y0,h):
% Nguyen Duc Nhan
% 28531361
% 14/9/2018
% uses midpoint method to solve an ODE
%
% INPUTS:
%  - dydt = function handle of the ODE, f(t,y)
%  - tspan = [<initial value>, <final value>] of independent variable
%  - y0 = initial value of dependent variable
%  - h = step size
% OUTPUTS:
%  - t = vector of independent variable
%  - y = vector of solution for dependent variable

% Input Validation: tspan
if ~(tspan(2)>tspan(1))
    error('upper limit must be greater than lower limits')
end

% Create all independant values, t
t = (tspan(1):h:tspan(2))';
n = length(t);

% if necessary, add an additional t so that range goes up to tspan(2)
if t(n)<tspan(2)
    t(n+1) = tspan(2);
    n = n+1;
end

% Implement midpoint method
y = y0*ones(n,1); % Preallocate y to improve efficiency
for i = 1:n-1
    yhalf = y(i) + dydt(t(i),y(i))*(t(i+1)-t(i))/2;
    thalf = t(i) + (t(i+1)-t(i))/2;
    y(i+1) = y(i) + (t(i+1)-t(i))*dydt(thalf,yhalf);
end
    
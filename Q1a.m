clear all; close all; clc;
% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Nguyen Duc Nhan
% 28531361
% 14/9/2018 
fprintf('\n Q1a \n\n')

%% importing data
file = importdata('race_data.csv');
time = file.data(:,1);
Along = file.data(:,2);  
Alat = file.data(:,3);
Glat = file.data(:,4);
Gad = file.data(:,5);

%% plotting race data against time
%First index was time, therefore i = 2:5
titles = ["Along (ms^-2) against t(s)" "Alat (ms^-2) against t(s)" "Glat (g) against t(S)" "Gad (g) against t(s)"];
ylabellings = ["Along (ms^-2)" "Alat (ms^-2)" "Glat (g)" "Gad (g)"];
u = 1;
for i = 2:5
    data1 = [];
    data1 = [data1; file.data(:,i)];
    subplot(2,2,(i-1))
    plot(time,data1(:,1),'b')
    xlabel('time (s)')
    ylabel(sprintf('%s', ylabellings(u))) 
    title(sprintf('%s ', titles(u)))
    u=u+1;
end


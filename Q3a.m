
% Leave any lines of MATLAB code that are already in this file
% DO NOT clear, close or clc inside this script
% Do not forget good programming practices
%
% Your name
% Your student ID
% Date you wrote it
fprintf('\n Q3a \n\n')
%% Importing images and initialise variables
reading1 = imread('1950.bmp');
reading2 = imread('1985.bmp');
reading3 = imread('2000.bmp');
reading4 = imread('2005.bmp');
reading5 = imread('2010.bmp');
reading6 = imread('2020.bmp');
reading_vector = {reading1; reading2; reading3; reading4; reading5; reading6};
%% Writing data to file
%grayscaling:
PFA = [];
sum_green_V=[];
sum_yellow_V=[];
%using that for loop......:
for i=1:6
    R = rgb2gray(reading_vector{i});
    log_R_lightblue = R == 240;
    log_R_yellow = R == 243 ; %Pixels of yellow
    log_R_green = ones(size(R)) - (log_R_lightblue+log_R_yellow);
    sum_green = sum(log_R_green(:) == 1);
    sum_green_V = [sum_green_V,sum_green]; 
    sum_yellow = sum(log_R_yellow(:) == 1);%land
    sum_yellow_V = [sum_yellow_V,sum_yellow]; 
    PFA = [PFA, sum_green/(sum_green+sum_yellow)*100];
end

Year = [1950 1985 2000 2005 2010 2020];
fid = fopen('BorneoForestData.txt','w');
fprintf(fid,'%s    %s    %s    %s\n', 'Year', 'Forest Area', 'Total Land Area','PFA(%)'); 
fprintf(fid,'%d        %d       %d            %0.3f\n', [Year', sum_green_V',(sum_yellow_V+sum_green_V)', PFA']');
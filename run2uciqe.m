clc;
clear;



input_folder = 'C:\Users\YYJ\Desktop\all results\Semi-UIR\UCCS\benchmarkA\';
files = dir(strcat(input_folder,'*.jpg'));  
numFiles = length(files); 
s=0;
for k = 1:numFiles 
filename = files(k).name;  
input_file = fullfile(input_folder, filename);              
% ��ȡ������ͼ��  
im = imread(input_file);
uiqm = uciqe(im)
s=s+uiqm
end
s=s/300
fprintf('uciqe: %.4f dB\n', s);


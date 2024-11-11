clc;
clear all;

% image number is from 1~56
%[meanRG, deltaRG, meanYB, deltaYB, uicm] = UICM(output)
%figure,imshow(input), title('original image');
%figure,imshow(output),title('enhanced image');
input_folder = 'C:\Users\YYJ\Desktop\all results\Semi-UIR\C60\benchmarkA\';
files = dir(strcat(input_folder,'*.png'));  
numFiles = length(files); 
s=0;
for k = 1:numFiles 
filename = files(k).name;  
input_file = fullfile(input_folder, filename);              
% 读取并处理图像  
im = imread(input_file);
% im=imresize(im,[256,256])
uiqm = UIQM(im)
s=s+uiqm
end
s=s/60
fprintf('UIQM: %.4f dB\n', s);

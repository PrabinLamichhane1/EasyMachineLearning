clc 
close all
clear all

mkdir('AudiM')
dd = dir('*.jpg');
for cntr = 1:length(dd)
    img = imread(dd(cntr).name);
    imgresized = imresize(img,[227 227]);
    imgresized_RGB = cat(3,imgresized,imgresized,imgresized);
    imwrite(imgresized_RGB,['AudiM\' dd(cntr).name]);

end
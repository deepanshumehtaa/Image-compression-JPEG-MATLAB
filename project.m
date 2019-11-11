clc; close all; % original image 

img =imread("filter0.png");
%img = rgb2gray(img);
imshow(img);

[M,N]=size(img);      %storing size of image


temp= round(M / 10) * 10;
b = temp + 10; 

if(M - temp > b - M)
    k=b;
else
    k=temp;
end

I = imresize(img,[k N]);
M = btc_image(I,10);  %btc_image(in_put,block_size)


figure
imshow(M);
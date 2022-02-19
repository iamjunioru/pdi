clear all;
close all;
clc;

pkg load image

i = imread('family2.jpg');
i = rgb2gray(i);
i = im2double(i);
# figure, imshow(i);

g1 = imnoise(i, 'gaussian', 0, 0.001);
# figure, imshow(g1);

g2 = imnoise(i, 'salt & pepper', 0.05);
# figure, imshow(g2);

h1 = fspecial('average', 10);
h2 = imfilter(g1, h1);
# figure, imshow(h2);


r = medfilt2(g2, [3 3]);
# figure, imshow(r);

# imagens 
figure
subplot (2,2,1), imshow (i);
subplot (2,2,2), imshow (g1);
subplot (2,2,3), imshow (g2);
subplot (2,2,4), imshow (r);

# figure
# subplot (2,2,1), imhist(i);
# subplot (2,2,2), imhist(g1);
# subplot (2,2,3), imhist(g2);
# subplot (2,2,4), imhist(r);
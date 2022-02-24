clear all;
close all;
clc;

pkg load image

f = imread('koala.jpg');
f = rgb2gray(f);
f = im2double(f);

f2 = zeros(200, 200)
f2(70:130, 30:120) = 1;
f2(95:105, 120:160) = 1;
f2(95:105, 30:60) = 0;
f2 = [f2, imrotate(f2, 90)];

g1 = im2bw(f, 0.6);

g2 = f.*g1;
g2 = f.*[1-g1];

g3 = imcomplement(f.*[1-g1]);

b = strel('disk', 5, 0);


# imshow(f); 
subplot (3,3,1), imshow (f);
subplot (3,3,2), imhist (f);
subplot (3,3,3), imshow (f2);
subplot (3,3,4), imshow (g1);
subplot (3,3,5), imshow (g2);
subplot (3,3,6), imshow (g3);
subplot (3,3,7), imshow (b);

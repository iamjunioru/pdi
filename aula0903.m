clc;
close all;
clear all;



f = imread('koala.jpg');
f1 = zeros(205,300);
f1(51:155, 61:200) = 1;
f1(81:85, 61:100) = 0;
f1(106:125, 61:100) = 0;
f1(76:90, 201:240) = 1
f1(121:125, 201:240) = 1;

b = strel('square', 6);
g = imopen(f, b);
g = imclose(f, b);

f2 = zeros(200, 200);
f2(20:180, 20:180) = 1;
f2(91:110, 41:60) = 0;
f2(91:110, 141:160) = 0;

g1 = imfill(f2);

imshow(f);

figure
subplot (3,3,1), imshow (f);
subplot (3,3,2), imshow (f1);
subplot (3,3,3), imshow (f2);
subplot (3,3,4), imshow (g);
subplot (3,3,5), imshow (g1);
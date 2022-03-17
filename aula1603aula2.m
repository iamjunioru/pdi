clear all;
close all;
clc;

pkg load image

f = imread('predio.tif');
g = edge(f, 'LoG');
g1 = edge(f, 'canny');
g2 = edge(f, 'canny', 0.1, 5);
g3 = g + g1 + g2;
g4 = g + g1 + g2 + g3;

#figure, imshow(f); 
subplot (3,3,1), imshow (f);
subplot (3,3,2), imshow (g);
subplot (3,3,3), imshow (g1);
subplot (3,3,4), imshow (g2);
subplot (3,3,5), imshow (g3);
subplot (3,3,6), imshow (g4);
#subplot (3,3,7), imshow (g4);
#subplot (3,3,8), imshow (g5);
#subplot (3,3,9), imshow (bw3);
clc;
close all;
clear all;

f=imread('koala.jpg');
f=imresize(f, 0.2);
f=rgb2gray(f);
f=im2double (f);
h=[1 2 1 ; 0 0 0; -1 -2 -1];
g1=imfilter (f,h);

h2=imrotate (h,90);
g2=imfilter (f,h2);
g3=g1+g2;
subplot (2,2,1), imshow (f);
subplot (2,2,2), imshow (g1);
subplot (2,2,3), imshow (g2);
subplot (2,2,4), imshow (g3);

figure
g4=f+g3;
subplot (1,2,1), imshow (f);
subplot (1,2,2), imshow (g4);
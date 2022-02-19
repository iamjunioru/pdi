clear all;
close all;
clc;

pkg load image;

i = imread('koala.jpg');
i = rgb2gray(i);
# imhist(i); # grafico

g = imadjust(i, [0 1], [0.4 0.7]);
# figure
# imshow(g);

h = imadjust(g, [0.4 0.7], [0 1]); # use apenas imadjust(variavel); p autocorreção
#figure
# imshow(h);

f = imadjust(i, [1 0], [0 1]); # imagem em negativo
# figure
# imshow(f);

## figure
# subplot(1, 2, 1), imhist(i);
# subplot(1, 2, 2), imhist(g);

# imagens 
figure
subplot (2,2,1), imshow (i);
subplot (2,2,2), imshow (g);
subplot (2,2,3), imshow (h);
subplot (2,2,4), imshow (f);

figure
subplot (2,2,1), imhist(i);
subplot (2,2,2), imhist(g);
subplot (2,2,3), imhist(h);
subplot (2,2,4), imhist(f);

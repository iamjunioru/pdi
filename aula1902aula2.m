clear all;
close all;
clc;

pkg load image

i = imread('letra.jpg');
 i = rgb2gray(i);
 i = im2double(i);
# figure, imshow(i);

# g1 = imnoise(i, 'gaussian', 0, 0.001);
# figure, imshow(g1);

#g2 = imnoise(i, 'salt & pepper', 0.05);
# figure, imshow(g2);

#h1 = fspecial('motion', 45);
# h2 = imfilter(g1, h1, 'symmetric');
# figure, imshow(h2);

r1 = fspecial('gaussian', 50, 5);
r2 = imfilter(i, r1, 'symmetric');
# figure, imshow(r2);



# r = medfilt2(g2, [3 3]);
# figure, imshow(r);
g2 = i- r2;
g3 = i + g2;
figure, imshow(g3);


figure, imshow(g2);



# imagens 
figure
subplot (2,2,1), imshow (i);
subplot (2,2,2), imshow (g1);
subplot (2,2,3), imshow (g2);
subplot (2,2,4), imshow (g3);

# figure
# subplot (2,2,1), imhist(i);
# subplot (2,2,2), imhist(g1);
# subplot (2,2,3), imhist(g2);
# subplot (2,2,4), imhist(r);

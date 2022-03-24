close all;
clear all;
clc;

f = imread('circulos.tif');
f = im2double(f);
imshow(f);
[c2, c1] = ginput(1);
close all;
c1 = round(c1);
c2 = round(c2);

g = zeros(size(f));
g(c1, c2) = 1;
imshow(g);

b = strel('square', 3);

imshow(g);

s = zeros(size(f));
m = f(c1, c2)
t1 = m * 0.8;
t2 = m * 1.2;

s(f>t1&f<t2) = 1;
imshow(s);

for i = 1:500
  g = imdilate(g, b);
  g = g&s;
end

figure, imshow(g);

#figure, imshow(g);

#subplot (3,3,3), imshow (c1);
#subplot (3,3,4), imshow (c2);
#subplot (3,3,5), imshow (g3);
#subplot (3,3,6), imshow (g4);
#subplot (3,3,7), imshow (g4);
#subplot (3,3,8), imshow (g5);
#subplot (3,3,9), imshow (bw3);
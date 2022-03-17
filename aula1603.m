clear all;
close all;
clc;

pkg load image

f=imread('skel.tif');
b=strel('square', 3);
s(:,:,1) = f - imopen(f, b);
g1 = f;
for i = 2:30
  g1 = imerode(g1, b);
  g2 = imopen(g1, b);
  s(:,:,i) = g1 - g2;
end
g3 = sum(s,3);
g = bwmorph(f,'skel', 30);

#imshow(g); 
subplot (3,3,1), imshow (f);
subplot (3,3,2), imshow (g3);
subplot (3,3,3), imshow (g);
#subplot (3,3,4), imshow (g1);
#subplot (3,3,5), imshow (g2);
#subplot (3,3,6), imshow (g3);
#subplot (3,3,7), imshow (g4);
#subplot (3,3,8), imshow (g5);
#subplot (3,3,9), imshow (bw3);
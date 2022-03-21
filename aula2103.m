clear all;
close all;

# load image pkg

function [g1, g2] = minhatransf(f, t)

f1 = im2double(f);

lim = zeros(size(f1));
lim = (find(f1 >= t)) = 1;

figure,
imshow(lim)

h = strel("diamond", 1);
g = imerode(lim, h);

front = lim - g;
g1 = front;

d = strel("disk", 5, 0);
a = imopen(lim, d);
g2 = imdilate(a, d);

# endfunction

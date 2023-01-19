[Image,ColorMap] = imread("Parede_8bit.bmp");

image(Image);
colormap(ColorMap);

%% ex 2

[Image,ColorMap] = imread("Parede_8bit.bmp");

Save8bitImage('Parede.raw',Image);

[Image,ColorMap] = imread("Parede_8bit.bmp");

Im = Load8bitImage('Parede.raw');
Im = uint8(Im);

image(Im);
colormap(ColorMap);
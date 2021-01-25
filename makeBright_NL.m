function[ outImg ] = makeBright_NL( inImg, brightness )

[x,y,z] = size(inImg);

outImg = inImg+brightness;

%noloop
% Extract only channels 1, 2, & 3.
%rgbImage = rgbImage(:,:,1:3);

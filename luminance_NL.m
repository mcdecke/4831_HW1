function[ outImg ] = luminance_NL( inImg )

R = inImg(:,:,1)
G = inImg(:,:,2)
B = inImg(:,:,3)
I = 0.299*R + 0.587*G + 0.114*B;

outImg(:,:,1) = uint8(I);
outImg(:,:,2) = uint8(I);
outImg(:,:,3) = uint8(I);
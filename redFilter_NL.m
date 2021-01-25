function[ outImg ] = redFilter_NL( inImg, redVal )

dims = size(inImg);
x = dims(1)
y = dims(2)


R = inImg(:,:,1)
G = inImg(:,:,2)
B = inImg(:,:,3)
I = 0.299*R + 0.587*G + 0.114*B;

% paint og pic
outImg(:,:,:) = inImg(:,:,:)

%paint over left
outImg(:,1:floor(y/3),1) = uint8(I(:,1:floor(y/3)));
outImg(:,1:floor(y/3),2) = uint8(I(:,1:floor(y/3)));
outImg(:,1:floor(y/3),3) = uint8(I(:,1:floor(y/3)));

% paint over right - red filtered 

I = redVal*R + ((1-redVal)/2)*G + ((1-redVal)/2)*B;

outImg(:,floor((end-y/3)):end,1) = uint8(I(:,floor((end-y/3)):end));
outImg(:,floor((end-y/3)):end,2) = uint8(I(:,floor((end-y/3)):end));
outImg(:,floor((end-y/3)):end,3) = uint8(I(:,floor((end-y/3)):end));

dims

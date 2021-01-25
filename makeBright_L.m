function[ outImg ] = makeBright_L( inImg, brightness )

[x,y,z] = size(inImg);

for i=1:1:x
    for j=1:1:y
%         for k=1:1:1
          outImg(i,j,1) = inImg(i,j,1)+brightness;
          outImg(i,j,2) = inImg(i,j,2)+brightness;
          outImg(i,j,3) = inImg(i,j,3)+brightness;
%         end
    end
end
        
%noloop
% Extract only channels 1, 2, & 3.
%rgbImage = rgbImage(:,:,1:3);

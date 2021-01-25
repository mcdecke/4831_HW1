function[ outImg ] = invert_L( inImg )

[x,y,z] = size(inImg);

for i=2:1:x-1
    for j=2:1:y-1
%         for k=1:1:1
          outImg(i,j,1) = 255 - inImg(i,j,1);
          outImg(i,j,2) = 255 - inImg(i,j,2);
          outImg(i,j,3) = 255 - inImg(i,j,3);
%         end
    end
end
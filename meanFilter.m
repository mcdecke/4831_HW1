function[ outImg ] = meanFilter(inImg, kernal)

[x,y,z] = size(inImg);
outImg(1:x,1:y,1:3) = 0;

for i=1:1:x-1
    for j=1:1:y-1

%         outImg(i,j,2) = 0;
%         outImg(i,j,3) = 0;
% %        for k=1:1:3
           for n=1:1:kernal
               for m=1:1:kernal
%                  outImg(i,j,1) = inImg((i),(j),1)/(kernal*kernal);
%                  outImg(i,j,2) = inImg((i),(j),2)/(kernal*kernal);
%                  outImg(i,j,3) = inImg((i),(j),3)/(kernal*kernal);
%                  outImg(i,j,2) = outImg(i,j,2) + inImg((i+n-.5*(kernal+1)), (j+m-.5*(kernal+1)),2)/(kernal*kernal);
%                  outImg(i,j,3) = outImg(i,j,3) + inImg((i+n-.5*(kernal+1)), (j+m-.5*(kernal+1)),3)/(kernal*kernal);
                  outImg(i,j,1) = inImg((i+m-(kernal+1)/2), (j+n-(kernal+1)/2),1)/(kernal*kernal);
                  outImg(i,j,2) =inImg((i+m-(kernal+1)/2), (j+n-(kernal+1)/2),2)/(kernal*kernal);
                  outImg(i,j,3) = outImg(i,j,3) + inImg((i+m-(kernal+1)/2), (j+n-(kernal+1)/2),3)/(kernal*kernal);
               end
           end
%           inImg(i-1,j-1,k)/9 + inImg(i,j-1,k)/9 + inImg(i+1,j-1,k)/9 + inImg(i-1,j,k)/9 + inImg(i,j,k)/9 + inImg(i+1,j,k)/9 + inImg(i-1,j+1,k)/9 + inImg(i,j+1,k)/9 + inImg(i+1,j+1,k)/9;
%         end
    end
end
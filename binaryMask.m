function[ outImg ] = binaryMask(inImg)

M = mean(inImg, 'All')
    
if size(inImg,3) == 1
   colormap gray
% else size(inImg,3) == 3
%     R = inImg(:,:,1)
%     G = inImg(:,:,2)
%     B = inImg(:,:,3)
%     I = 0.299*R + 0.587*G + 0.114*B;
%     M = mean(I, 'All')
%     outImg(:,:,1) = uint8(round(I/M));
%     outImg(:,:,2) = uint8(round(I/M));
%     outImg(:,:,3) = uint8(round(I/M));
%     return
end


outImg = round(inImg/M);
function[ outImg ] = addRandomNoise_NL( inImg )

r1 = uint8(randi(125,size(inImg)));

outImg = inImg + r1;
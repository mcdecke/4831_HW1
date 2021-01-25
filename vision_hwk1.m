% This script creates a menu driven application

%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% your information
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;close all;clc;

% Display a menu and get a choice
choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Brighten', 'Brighten2', 'Invert', 'Invert2','Random Noise', 'Luminance', 'Red Filter','Binary','Mean Filter', 'Frosty', 'Scale Near','Scale Bin', 'Swirl', 'Famous');  % as you develop functions, add buttons for them here
 
% Choice 1 is to exit the program
while choice ~= 1
   switch choice
       case 0
           disp('Error - please choose one of the options.')
           % Display a menu and get a choice
          choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Brighten', 'Brighten2', 'Invert', 'Invert2','Random Noise', 'Luminance', 'Red Filter','Binary','Mean Filter', 'Frosty', 'Scale Near','Scale Bin', 'Swirl', 'Famous');  % as you develop functions, add buttons for them here
        case 2
           % Load an image
           image_choice = menu('Choose an image', 'lena1', 'mandril1', 'sully', 'yoda', 'shrek', 'Red Baloon', 'Wrench');
           switch image_choice
               case 1
                   filename = 'lena1_small.jpg';
              case 2
                   filename = 'mandrill1.jpg';
              case 3
                   filename = 'sully.bmp';
               case 4
                   filename = 'yoda.bmp';
               case 5
                   filename = 'shrek.bmp';
               case 6
                   filename = 'redBaloon.jpg';
               case 7
                   filename = 'wrench1.jpg';
               % fill in cases for all the images you plan to use
           end
           current_img = imread(filename);
       case 3
           % Display image
           figure
           imagesc(current_img);
           if size(current_img,3) == 1
               colormap gray
           end
           
       case 4
           % Brighten
           brightness = input(' Input between -255 and 255:');
           oldImage = current_img;
           newImage = makeBright_L(current_img, brightness);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
          
           % 4. Save the newImage to a file
       case 5
           % brighten2
           brightness = input(' Input between -255 and 255:');
           oldImage = current_img;
           newImage = makeBright_NL(current_img, brightness);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
       case 6
           %invert
           oldImage = current_img;
           newImage = invert_NL(current_img);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
           
       case 7
           %invert2
           oldImage = current_img;
           newImage = invert_L(current_img);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
      case 8
           %random noise
           oldImage = current_img;
           newImage = addRandomNoise_NL(current_img);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
      case 9
        %Luminance
           oldImage = current_img;
           newImage = luminance_NL(current_img);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
      case 10
        %Red Filter
           oldImage = current_img;
           redVal = input(' Input between 0 and 1:');
           newImage = redFilter_NL(current_img, redVal);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
      case 11
        %Binary
           oldImage = current_img;
           newImage = binaryMask(current_img);
           subplot(1,2,1);imagesc(oldImage),title('Before');       
           subplot(1,2,2);imagesc(newImage),title('After');
      case 12
        %Mean            
        oldImage = current_img;
        kernal = input('Input kernal size:');
        newImage = meanFilter(current_img, kernal);
        subplot(1,2,1);imagesc(oldImage),title('Before');       
        subplot(1,2,2);imagesc(newImage),title('After'); 
      case 13
        %Frosty
      case 14
        %Scale
      case 15
        %Scale
      case 16
           %Swirl
      case 17
           %famous
       %....
   end
   % Display menu again and get user's choice
    choice = menu('Choose an option', 'Exit Program', 'Load Image', ...
    'Display Image', 'Brighten', 'Brighten2', 'Invert', 'Invert2','Random Noise', 'Luminance', 'Red Filter','Binary','Mean Filter', 'Frosty', 'Scale Near','Scale Bin', 'Swirl', 'Famous');
end

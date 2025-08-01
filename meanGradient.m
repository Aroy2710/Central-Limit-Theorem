function meanGradient()
%This function generates an image using the sample mean values in the pixel
%value calculation in order to show the differences between each visually
%sample means will be taken from a csv file
%Format: meanGradient()
    imageData = []; %generate an empty vector
    % Read the data as a column vector
    file = readmatrix('sampleMeans.csv'); 

    rows = 100; %row number
    cols = length(file) / rows;
    %checks if mxn is an integer or not
    if mod(length(file), rows) ~= 0 
        disp('Dimensions do not match.');
        return
    end

    % Reshape the column vector into a matrix
    meanGradient = reshape(file, rows, cols);
    
    %Calculating pixel value
    for row=[1:rows]
        imageRow = []; %empty vector for row
        for col = [1:cols]
            pixelVal = uint8(meanGradient(row,col)/(max(file)) * 255); % make a pixel val in 0..255
            imageRow = [imageRow pixelVal];  %add value for  pixel
        end
        imageData = [imageData; imageRow]; % add row of pixels
    end

    % Save the image 
    imwrite(imageData, 'meanGradientImage.png');
end

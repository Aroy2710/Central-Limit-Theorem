function [meanVal, stdDev, medianVal, modeVal, varVal, rangeVal, iqrVal] = calculateSummaryStatistics(data)
%This function generates summary statistics for any data set
%Format = calculateStatistics(dataset)
    %calculation of mean
    dataSum = 0; 
    
    for i = 1 : length(data)  
    dataSum = dataSum + data(i); %Add each value to dataSum
    end
    meanVal = dataSum/length(data); %Calculation of expected value of sample mean 

    %calculation of variance
    squareDataSum = 0 ;
    for i = 1 : length(data)  
        squareDataSum = squareDataSum + (data(i))^2; %Calculation of sum of squared data 
    end
    meanSquareVal = squareDataSum/length(data);     
    varVal = meanSquareVal - (meanVal)^2; 

    %calculation of median
    sortedData = sort(data);%sort the data in ascending order
    for i = 1 : length(sortedData)
        if mod(length(sortedData), 2) ~= 0 %if number of data points is odd 
            medianVal = sortedData((length(sortedData)+1)/2); 
        else
            medianVal = (sortedData(length(sortedData)/2 + 1)+ sortedData(length(sortedData)/2 - 1))/2; %if the number of data points is even
        end
    end

    %Calculation of the mode
    modeDefault = []; %default value for mode in case there is no mode in the dataset
    uniqueVals = unique(data); %Removes all the duplicates
    counts = histcounts(data, [uniqueVals, Inf]); %histcounts excludes the bin for elements greater than equal to the largest element in uniqueVals so [uniqueVals,Inf] allows us to include that bin
    maxCount = max(counts); %Since count contains frequency of each value, this line of code returns the index for the highest count and stores it in idx
    if maxCount == 1
        disp("There is no mode in this data set, mode will be returned as []");
        modeVal = modeDefault;
    else
        logicalMaxVector = counts == maxCount; %Creates a logical array where the counts in the counts vector are 1 when they are equivalent to maxCount
        modeVal = uniqueVals(logicalMaxVector); %Boolean indexing will only return the values that correspond to the indices in the logical array that are 1
    end

    %Calculation of standard deviation
    stdDev = sqrt(varVal);

    %Calculation of range
    rangeVal = max(data)-min(data);
    
    %Calculation of Interquartile range
    lowerQuartile = quantile(data, 0.25);
    upperQuartile = quantile(data, 0.75);
    iqrVal = upperQuartile - lowerQuartile;
end


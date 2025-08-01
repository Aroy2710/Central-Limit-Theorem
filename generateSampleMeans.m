function [sampleMeans] = generateSampleMeans(sampleSize, numberOfSamples)
%This function simulates rolling a dice a certain number of times and then
%calculates the mean of the dice rolls and repeats this process
%Format : generateSampleMeans(sampleize , numberOfSamples)
    sampleMeans = []; %Initialize empty vector
    if sampleSize<1 || numberOfSamples<10000 
        disp("Sample size cannot be less than 1 nor can number of samples be less than 10000")
        return
    end
    for i = 1 : numberOfSamples %Loop will iterate as many times as the number of samples the user has entered
        randomDiceSample = randi([1,20],1,sampleSize); %For every iteration random values representing dice rolls will be generated , the number of rolls depends on the sampleSize variable
        sum = 0; %Initialize a value for the sum of rolls in randomDiceSample
        for j = 1 : length(randomDiceSample) %Loop through all the elements in randomDiceSample
            sum = sum + randomDiceSample(j); %Add each value in randomDiceSample to sum
        end
        sampleMean = sum/sampleSize; %For each iteration of the outerloop a sample mean will be generated based on randomDiceSample
        sampleMeans = [sampleMeans sampleMean]; %concatenate each sample mean to the sampleMeans vector
    end
end


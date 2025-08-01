
% Main code block with switch statements
clc;
clear;
fprintf('=========================\n');
fprintf(' Dice Roll Simulation\n');
fprintf('=========================\n\n');
disp('Do you want to listen to the audio of the greeting?');
disp('1. Yes');
disp('2. No');
audioChoice = input('Enter your choice (1 = Yes, 0 = No): ');
switch audioChoice
    case 1
        [audio,frequencySample] = audioread('greetingAudio.m4a'); %store the audio as a matrix in the variable audio and stores the sample rate in frequency sample, in order to ensure correct speed and pitch
        sound(audio,frequencySample); %Plays the audio
    case 0
        disp("Skipping audio, greeting will be provided only as text");
    otherwise
        disp("Invalid Input");
end

fprintf("\nThe purpose of this program is to showcase the Central Limit Theorem\n");
fprintf("\nThe Central Limit states the distribution of the sample mean of any population follows a normal distribution with a sufficiently large sample size\n ");
fprintf("\nThe program will showcase that with increasing sample size the distribution of the sample mean of dice rolls become more and more normal \n ");
fprintf("\nIt is recommended to keep the number of samples constant when varying the sample size\n")
% Step 1: Get user input
sampleSize = getSampleSize();
numberOfSamples = getNumberOfSamples();

% Step 2:  Generating a list of sample means 
[sampleMeans] = generateSampleMeans(sampleSize, numberOfSamples);

% Step 3: Ask user which visualizations they want to see
fprintf('\nSelect a plot to display:\n');
fprintf('1. Histogram (To directly see the Central Limit Theorem) \n2. Line Plot of Means\n3. Box Plot of Means\n4. Normal Overlay (The overlay of actual normal distribution over our distribution)\n5. All\n');
plotChoice = input('Enter your choice (1-5): ');
plotChoice = fix(plotChoice); %truncates the value if its a floating point value
switch plotChoice
    case 1
        plotHistogram(sampleMeans, sampleSize, numberOfSamples, mean(sampleMeans), std(sampleMeans));
    case 2
        plotLineOfMeans(sampleMeans, numberOfSamples);
    case 3
        plotBoxPlot(sampleMeans, numberOfSamples);
    case 4
        plotNormalOverlay(sampleMeans, mean(sampleMeans), std(sampleMeans));
    case 5
        plotHistogram(sampleMeans, sampleSize, numberOfSamples, mean(sampleMeans), std(sampleMeans));
        plotLineOfMeans(sampleMeans, numberOfSamples);
        plotBoxPlot(sampleMeans, numberOfSamples);
        plotNormalOverlay(sampleMeans, mean(sampleMeans), std(sampleMeans));
    otherwise
        disp('Invalid choice. Skipping plots.');
end

% Step 4: Ask if user wants statistics
disp('Do you want to see summary statistics?');
disp('1. Yes');
disp('2. No');
statsChoice = input('Enter your choice (1 or 2): ');
statsChoice = fix(statsChoice); %truncates the value if its a floating point value
switch statsChoice
    case 1
        [meanVal, stdDev, medianVal, modeVal, varVal, rangeVal, iqrVal] = calculateSummaryStatistics(sampleMeans);
        printSummaryStats(meanVal, stdDev, medianVal, modeVal, varVal, rangeVal, iqrVal);
        empiricalRule(meanVal, stdDev);
    case 2
        disp('Skipping statistics.');
    otherwise
        disp('Invalid input.');
end

% Step 5: Ask if user wants to save data
saveChoice = input('Do you want to save the results? (1 = Yes, 0 = No): ');
saveChoice = fix(saveChoice); %truncates the value if its a floating point value
switch saveChoice
    case 1
        saveResults(sampleMeans);
    case 0
        disp('Data not saved.');
    otherwise
        disp('Invalid input.');
end

% Step 6: Ask if user wants to show gradient image
gradientChoice = input('Do you want to see the mean colour gradient? (1 = Yes, 0 = No) ,press 0 if you have not saved the sample means as a csv file: ');
gradientChoice = fix(gradientChoice); %truncates the value if its a floating point value
switch gradientChoice
    case 1
        meanGradient();
    case 0
        disp('Skipping gradient visualization.');
    otherwise
        disp("Invalid Input")
end
[audio,frequencySample] = audioread('conclusionAudio.m4a'); %stores the audio and its sampling rate in audio and frequencySample
sound(audio,frequencySample); %plays the audio
disp("Thank you very much for using this program");

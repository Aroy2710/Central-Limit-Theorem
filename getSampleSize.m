function sampleSize = getSampleSize()
%Asks the user for the sample size 
%Format : getSampleSize()
    while true
        sampleSize = input('Enter how many times you want to roll the dice every sample: ');
        sampleSize = fix(sampleSize); %truncates the value if its a floating point value
        if sampleSize >= 1 %checks for when sample size is less than 1 
            break;
        else
            fprintf('Sample size must be at least 1. Try again.\n');
        end
    end
end
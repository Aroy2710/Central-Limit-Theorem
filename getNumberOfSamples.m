function numberOfSamples = getNumberOfSamples()
%Ask the user for the number of samples
%Format : getNumberOfSamples()
    while true
        numberOfSamples = input('How many samples you want to take , please enter a number greater than or equal to 10000 : ');
        numberOfSamples = fix(numberOfSamples); %truncates the value if its a floating point value
        if numberOfSamples >= 10000 %checks for when number of samples is less than 1 
            break;
        else
            fprintf('There must be atleast 10000 samples, please try again \n');
        end
    end
end
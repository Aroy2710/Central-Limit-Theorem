function empiricalRule(mean,standardDeviation)
    %This function outputs, the ranges where 68%, 95% and 99.7% of the sample mean data lie
    %Format : empiricalRule(mean,standardDeviation,valueOfn)
    standardDeviation = abs(standardDeviation); %To prevent user from enterig a negative value for standard deviation
    n = 1 ;
    while n<=3
        
        lowerLimit = mean -n*standardDeviation;
        upperLimit = mean+n*standardDeviation;
        switch n
            case 1
                fprintf("68%% of the sample means lie between [%.4f,%.4f] \n",lowerLimit,upperLimit);
            case 2
                fprintf("95%% of the sample means lie between [%.4f,%.4f] \n",lowerLimit,upperLimit);
            case 3
                fprintf("99.7%% of the sample means lie between [%.4f,%.4f] \n",lowerLimit,upperLimit);

        end
        n = n +1; %n will be incremented by 1 in order to show every case until n>3

    end



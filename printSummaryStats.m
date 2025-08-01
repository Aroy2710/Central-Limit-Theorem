function printSummaryStats(meanVal, stdDev, medianVal, modeVal, varVal, rangeVal, iqrVal)
%This function displays all the summary statistics that were calculated in the main program
%Format : printSummaryStats(mean,standardDeviation, median, mode,variance,range, interQuartileRange)
    fprintf('\n----- Summary Statistics -----\n');
    fprintf('Mean                : %.4f\n', meanVal);
    fprintf('Standard Deviation  : %.4f\n', stdDev);
    fprintf('Median              : %.4f\n', medianVal);
    fprintf('Mode                : %.4f\n', modeVal);
    fprintf('Variance            : %.4f\n', varVal);
    fprintf('Range               : %.4f\n', rangeVal);
    fprintf('Interquartile Range : %.4f\n', iqrVal);
end


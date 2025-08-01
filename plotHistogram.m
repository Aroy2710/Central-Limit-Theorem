function plotHistogram(data, sampleSize, numberOfSamples,mean,standardDeviation)
%Generates a histogram that shows the distribution of the sample means
%Format = %plotHistogram(sampleMeans,sampleSize,numberOfSamples,mean,standardDevation)
    figure; %ensures histogram is in a different figure window
    binWidth = 50; %setting a bin width
    histogram(data,binWidth); 
    xlabel('Sample Means'); 
    ylabel(sprintf('Frequency of Sample Means in %d samples', numberOfSamples)); 
    legend(sprintf("Sample Size : %d Mean : %.4f , Standard Deviation : %.4f ",sampleSize,mean,standardDeviation));
    saveas(gcf,'histogram.png'); %saves the histogram as an image
end

function plotBoxPlot(data,numberOfSamples)
%Displays the boxplot of the sample means 
%Format : plotBoxPlot(sampleMeans)
    figure; %plots the visual in a new figure
    boxplot(data); %creates a boxplot out of the data set entered
    ylabel('Sample Means');
    title(sprintf('Boxplot of Sample Means over %d samples',numberOfSamples));
    saveas(gcf,'boxPlot.png'); %saves the figure 
end


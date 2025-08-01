function plotLineOfMeans(data,numberOfSamples)
%Displays the values of each sample mean over a certain number of samples in a graph
%Format : plotLineOfMeans(sampleMeans,numberOfSamples)
    figure; %ensures the line plot is in a different figure window
    plot(data, '-b', 'LineWidth', 1.2); %makes line plot blue and each line has a width of 1,2
    xlabel('Sample Number');
    ylabel('Sample Mean');
    title(sprintf("Distribution of the values of the sample means over %d samples",numberOfSamples));
    grid on; %turns the background into a background with gridlines
    saveas(gcf,'LineOfMeans.png'); %saves the current line plot as an image
end

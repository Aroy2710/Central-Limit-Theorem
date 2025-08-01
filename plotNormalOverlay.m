function plotNormalOverlay(data,meanVal,stdDev)
%This function overlays the actual normal distribution curve over the histogram that displays the actual distribution of sample means
%Format plotNormalOverlay(sampleMeans)
    figure; %ensures the normal overlay is in a different figure window
    histogram(data, 50, 'Normalization','pdf'); %Normalization makes it so the area under the histogram is 1 , pdf converts the frequenct counts to pdf values
    hold on; %ensures the normal overlay and histogram are in the same figure window
    mu = meanVal;
    sigma = stdDev;
    x = linspace(min(data), max(data), 100); %creates 100 equally spaced values between the max and minimum of the dataset
    y = normpdf(x, mu, sigma); %creates the y coordinates for the normal overlay
    plot(x, y, 'r', 'LineWidth', 2); %Plots the normal overlay
    title('Normal Distribution Overlay');
    xlabel('Sample Mean');
    ylabel('Probability Density');
    legend('Sample Means', 'Normal PDF');
    grid on; %creates a grid background 
    hold off;
    saveas(gcf,'normalOverlay.png'); %saves the visual output as an image
end


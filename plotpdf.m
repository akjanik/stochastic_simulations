xRange = 0:10;                %# Range of integers to compute a probability for
N = hist(gaussian,xRange);        %# Bin the data
plot(xRange,N./numel(gaussian));  %# Plot the probabilities for each integer
xlabel('Integer value');
ylabel('Probability');
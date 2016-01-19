clear all;
clc; close all;

t = 0; T = 1000; I = T-t;
%WARNING: tau must be equal 1, not sure how to solve this problem.
dT = T/I; t = 0:dT:T; tau = T/I;
alpha = 1.5;
sigma = dT^(1/alpha);
mu = 0; beta = 0;
N = 1000;
%X = zeros(N, length(I));
L = zeros(I,N);
for i = 1:I-1
   L((i + 1) * tau,: ) = L(i*tau,:) + stable( alpha, beta, sigma, mu, N);
end
X = L';
q = 0.1:0.1:0.9;
quant = qlines(X, q, t(1:I), tau);
hold all
for i = 1:length(quant)
    plot( t, quant(i) * t.^(1/alpha), ':k' );
end


legend('q_{0.1}', 'q_{0.2}','q_{0.3}','q_{0.4}','q_{0.5}','q_{0.6}','q_{0.7}','q_{0.8}','q_{0.9}', 'theo', ... 
    'Orientation', 'horizontal', 'Location', 'northwest')

plot(X(1,:), 'k','LineWidth', 2)
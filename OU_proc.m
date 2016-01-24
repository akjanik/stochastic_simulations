clear all; close all; clc;

T = 5;
I = 100;

dt = 0.001;
t = 0:dt:T;
tau = dt;

alpha = 1.8; beta = 0; mu = 0; sigma = 1;
lambda = 1;
N = 100;
OU = zeros(N, length(t));
for j=1:length(t)-1
    OU(:,j + 1) = OU(:, j) - lambda * OU(:, j) * tau + tau^(1/alpha) * stable(alpha, beta, 1, mu, 100);
end

q = 0.1:0.1:0.9;
quant = qlines2(OU, q, t(1:length(OU)), tau);
hold all



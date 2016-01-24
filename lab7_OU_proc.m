clear all; close all; clc;



T = 5;
I = 100;

dt = 0.001;
t = 0:dt:T;
X = zeros(1,T);
tau = dt;

%Z = levym(1, beta, mu, 1, T);
alpha = 1.8; beta = 0; mu = 0; sigma = 1;
lambda = 1;
N = 100;
OU = zeros(N, length(t));
for j=1:N
    for i = 1:length(t) -  1
       %X(i + 1) = X(i) - lambda * X(i) * tau + Z(i + 1) - Z(i);
       X(i + 1) = X(i) - lambda * X(i) * tau + tau^(1/alpha) * stable2(alpha, beta, 1, mu, 1);
    end
    OU(j,:) = X;
end

q = 0.1:0.1:0.9;
quant = qlines2(OU, q, t(1:length(OU)), tau);
hold all

for i = 1:length(quant)
    plot( t, quant(i) * t.^(1/alpha), ':k' );
end


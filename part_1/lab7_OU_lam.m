clear all; close all; clc;

T = 5;
I = 1000;

dt = 0.001;
t = 0:dt:T;
X = zeros(1,T);
tau = dt;

%Z = levym(1, beta, mu, 1, T);
alpha = 1.5; beta = 0; mu = 0; sigma = 1;
lambda = 1;
N = 100;
OU = zeros(N, length(t));
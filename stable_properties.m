clear all;
%property 1
% 
% alpha = 1.8;
% mu1 = 1; mu2 = 0.5;
% sigma1 = 0.5; sigma2 = 0.3;
% beta1 = 0.3; beta2 = 0.8;
% 
% sigma = ( sigma1^alpha + sigma2^alpha )^(1/alpha)
% beta = ( beta1*(sigma1^alpha) + beta2*(sigma2^alpha) ) / ( sigma1^alpha + sigma2^alpha )
% mu = mu1 + mu2
% 
% X1 = stable(alpha, beta1, sigma1, mu1, 10000000);
% X2 = stable(alpha, beta2, sigma2, mu2, 10000000);
% X = X1 + X2;
% save X.txt X -ascii;

%property 2
alpha = 1.8; mu = 0; sigma = 1; beta = 0.7;
X = stable(alpha, beta, sigma, mu, 1000000);
X = -X; save X.txt X -ascii;
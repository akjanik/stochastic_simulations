Nsims = 1000;
N=2^15;         % set to length of individual sim                    
r = 1;
alpha = 0.1;
T = 1;

t = (0:1:N)'/N;                   
t = (T*(r-(alpha^2)/2))*t;
W = cat(1,zeros(1,Nsims),cumsum(randn(N,Nsims))); 
W = W*(sqrt(T)*alpha/sqrt(N));
Y = repmat(t,1,Nsims) + W;
X = exp(Y);

plot(t,X)
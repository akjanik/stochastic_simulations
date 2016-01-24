
function [y, dt] = brownian_motion(r, sigma, N)
    %X = zeros(1, N);
    %r = 0.01; sigma = 0.01; N = 1000;
    
    t = 0:0.01:N;
    h = t(2) - t(1);
    n = normrnd(0, 1, 1, length(t));
    X = zeros(1, length(t));
    X(1) = 100;
    for i = 1:length(t) - 1
       X(i + 1) = X(i) +  r*X(i)*h + sigma*X(i)*sqrt(h) * n(i + 1);
    end
    %disp(h)
    y = X;
    dt = h;
end

clear all; close all;
alpha = 0.9;
n = 6;
gam1 = 0.25; s1 = [1, 0]; 
gam2 = 0.125; s2 = [0.5, sqrt(3)/2];
gam3 = 0.25; s3 = [-0.5, sqrt(3)/2];
gam4 = 0.25; s4 = [-1, 0];
gam5 = 0.125; s5 = [-0.5, -sqrt(3)/2];
gam6 = 0.25; s6 = [0.5, -sqrt(3)/2];
gam = [gam1, gam2, gam3, gam4, gam5, gam6];
s = [s1', s2', s3', s4', s5', s6'];
N = 1e5;
W = zeros(N, 2);
for j = 1:N
    Z = stable(alpha, 1, 1, 0, n);
    X = zeros(2, n);
    for i=1:n
        X(:, i) = gam(i).^(1/alpha) .* Z(i).*s(:, i);
    end
    X = sum(X, 2);
    
    X = X';
    if X(:, 1) > 4 || X(:, 1) < -4 || X(:, 2) > 4 || X(:, 2) < -4
        continue
        %W(j, :) = W(j-1, :);
    else
        W(j, :) = X;
    end
    
end
%remove any empty rows
W(any(W==0,2),:)=[];
data = W;

[bandwidth,density,X,Y]=kde2d(data);
contour(X,Y,density), hold on
%    plot(data(:,1),data(:,2),'r.','MarkerSize',5)

%[X1,Y1] = meshgrid(x,y);
% contour(density, 10)
%surf(X,Y,density)
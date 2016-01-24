clear all;alpha = 1.5; sigma = 1; mu = 0;
%  alpha = 1.5;
m = 100;
estymator = zeros(20, m);
betas = -1:0.1:1;
for j = 1:20
    beta = betas(j);
    beta_est = zeros(1,m);
    for i = 1:100
        n = 1000;
        a = stable(alpha, beta, sigma, mu, n);
        X = abs(a);
        L = mean( (log(X) - mean(log(X))).^2 );
        phi = (pi^2) / 6;
        theta = ( ( phi/2 - L ) .* alpha.^2 - phi ) .^ (1/2);
        theta = imag(theta);
        beta_est(i) = tan(theta) ./ tan( alpha*pi/2 );
        
    end
    estymator(j, :) = beta_est;
end
estymator = estymator';
% for l=1:20
%    set(gca,'XTickMode','auto','XTickLabel',xtix,'XTick',xtixloc);
%    boxplot(estymator(l, : ), 'plotstyle','compact'   );
%    hold all;
% end
boxplot(estymator); 
% set(gca,'YTick',0:0.1:3)
% set(gca,'XTick',0:0.1:3)

% MSE = zeros(1, 20);
% for i = 1:20
%     alpha = i / 10;
%    MSE(i) = mean( ( mean(estymator(:,i)) - alpha ).^2 ); 
% end
% figure(2); plot(MSE);
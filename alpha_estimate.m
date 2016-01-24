 clear all; close all; beta = 0; sigma = 1; mu = 0;
%  alpha = 1.5;
m = 100;
estymator = zeros(20, m);
for j = 1:20
    alpha = j/10;
    alpha_est = zeros(1,m);
    for i = 1:100
        n = 1000;
        a = stable(alpha, beta, sigma, mu, n);
        X = abs(a);
        L = mean( (log(X) - mean(log(X))).^2 );
        phi = (pi^2) / 6;

        alpha_est(i) = ( L/phi - 1/2 )^(-1/2);
    end
    estymator(j, :) = alpha_est;
end
estymator = estymator';
% for l=1:20
%    set(gca,'XTickMode','auto','XTickLabel',xtix,'XTick',xtixloc);
%    boxplot(estymator(l, : ), 'plotstyle','compact'   );
%    hold all;
% end

boxplot(estymator); 
set(gca,'XTickLabel',{' '})
set(gca,'XTick',1.1:1:20.1)
set(gca,'XTickLabel',0.1:0.1:2)
xlabel('alpha\_theo'); ylabel('alpha\_estimated');
set(gca,'YTick',0:0.1:3)
% set(gca,'XTick',0:0.1:3)

MSE = zeros(1, 20);
for i = 1:20
    alpha = i / 10;
   MSE(i) = mean( ( mean(estymator(:,i)) - alpha ).^2 ); 
end
ax = 0.1:0.1:2;
figure(2)
scatter(ax, MSE, 'r.', 'LineWidth', 2);
line(ax, MSE);
xlabel('alpha')
ylabel('MSE')

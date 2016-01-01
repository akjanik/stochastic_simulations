clear all; close all

%% cauchy, levy, gauss
% s = rng;
% Z1 = stable(2, 0, 1, 0, 100000,s); Z1 = Z1(Z1>-7); Z1 = Z1(Z1<7); 
% Z2 = stable(1, 0, 1, 0, 100000,s); Z2 = Z2(Z2>-7); Z2 = Z2(Z2<7); 
% Z3 = stable(0.5, 1, 1, 0, 100000,s); Z3 = Z3(Z3>-7); Z3 = Z3(Z3<7); 
% [f1,x1] = ksdensity(Z1);
% [f2,x2] = ksdensity(Z2);
% [f3,x3] = ksdensity(Z3);
% subplot(1,2,1)
% plot(x1, f1, 'r', 'LineWidth', 2); hold on;
% plot(x2, f2, '.g', 'LineWidth', 2); hold on;
% plot(x3, f3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('Gauss','Cauchy', 'Levy','Location','NorthEast')
% 
% [y1,xx1] = ecdf(Z1);
% [y2,xx2] = ecdf(Z2);
% [y3,xx3] = ecdf(Z3);
% subplot(1,2,2)
% plot(xx1, y1, 'r', 'LineWidth', 2); hold on;
% plot(xx2, y2, '--g', 'LineWidth', 2); hold on;
% plot(xx3, y3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('Gauss','Cauchy', 'Levy', 'Location','NorthWest')

%% compare different alpha
% s = rng;
% Z1 = stable(0.7, 0, 1, 0, 100000,s); Z1 = Z1(Z1>-6); Z1 = Z1(Z1<6); 
% Z2 = stable(1.3, 0, 1, 0, 100000,s); Z2 = Z2(Z2>-6); Z2 = Z2(Z2<6); 
% Z3 = stable(1.8, 0, 1, 0, 100000,s); Z3 = Z3(Z3>-6); Z3 = Z3(Z3<6); 
% [f1,x1] = ksdensity(Z1);
% [f2,x2] = ksdensity(Z2);
% [f3,x3] = ksdensity(Z3);
% subplot(1,2,1)
% plot(x1, f1, 'r', 'LineWidth', 2); hold on;
% plot(x2, f2, '--g', 'LineWidth', 2); hold on;
% plot(x3, f3, '.b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\alpha = 0.7','\alpha = 1.3', '\alpha = 1.8','Location','NorthEast')
% 
% [y1,xx1] = ecdf(Z1);
% [y2,xx2] = ecdf(Z2);
% [y3,xx3] = ecdf(Z3);
% subplot(1,2,2)
% plot(xx1, y1, 'r', 'LineWidth', 2); hold on;
% plot(xx2, y2, '--g', 'LineWidth', 2); hold on;
% plot(xx3, y3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\alpha = 0.7','\alpha = 1.3', '\alpha = 1.8','Location','NorthWest')

%% varying beta now
% s = rng;
% Z1 = stable(0.7, 0, 1, 0, 100000,s); Z1 = Z1(Z1>-6); Z1 = Z1(Z1<6); 
% Z2 = stable(0.7, 0.5, 1, 0, 100000,s); Z2 = Z2(Z2>-6); Z2 = Z2(Z2<6); 
% Z3 = stable(0.7, 1, 1, 0, 100000,s); Z3 = Z3(Z3>-6); Z3 = Z3(Z3<6); 
% [f1,x1] = ksdensity(Z1);
% [f2,x2] = ksdensity(Z2);
% [f3,x3] = ksdensity(Z3);
% subplot(1,2,1)
% plot(x1, f1, '--r', 'LineWidth', 2); hold on;
% plot(x2, f2, '--g', 'LineWidth', 2); hold on;
% plot(x3, f3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\beta = 0','\beta = 0.5', '\beta = 1','Location','NorthEast')
% 
% [y1,xx1] = ecdf(Z1);
% [y2,xx2] = ecdf(Z2);
% [y3,xx3] = ecdf(Z3);
% subplot(1,2,2)
% plot(xx1, y1, '--r', 'LineWidth', 2); hold on;
% plot(xx2, y2, '--g', 'LineWidth', 2); hold on;
% plot(xx3, y3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\beta = 0','\beta = 0.5', '\beta = 1','Location','NorthWest')

%% varying sigma now
% s = rng;
% Z1 = stable(1.3, 0, 1, 0, 100000,s); Z1 = Z1(Z1>-6); Z1 = Z1(Z1<6); 
% Z2 = stable(1.3, 0, 1.5, 0, 100000,s); Z2 = Z2(Z2>-6); Z2 = Z2(Z2<6); 
% Z3 = stable(1.3, 0, 3, 0, 100000,s); Z3 = Z3(Z3>-6); Z3 = Z3(Z3<6); 
% [f1,x1] = ksdensity(Z1);
% [f2,x2] = ksdensity(Z2);
% [f3,x3] = ksdensity(Z3);
% subplot(1,2,1)
% plot(x1, f1, '--r', 'LineWidth', 2); hold on;
% plot(x2, f2, '--g', 'LineWidth', 2); hold on;
% plot(x3, f3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\sigma = 1','\sigma = 1.5', '\sigma = 3','Location','NorthEast')
% 
% [y1,xx1] = ecdf(Z1);
% [y2,xx2] = ecdf(Z2);
% [y3,xx3] = ecdf(Z3);
% subplot(1,2,2)
% plot(xx1, y1, '--r', 'LineWidth', 2); hold on;
% plot(xx2, y2, '--g', 'LineWidth', 2); hold on;
% plot(xx3, y3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\sigma = 1','\sigma = 1.5', '\sigma = 3','Location','NorthWest')

%% varying mu now
% s = rng;
% Z1 = stable(1.3, 0, 1, -2, 100000,s); Z1 = Z1(Z1>-6); Z1 = Z1(Z1<6); 
% Z2 = stable(1.3, 0, 1, 1, 100000,s); Z2 = Z2(Z2>-6); Z2 = Z2(Z2<6); 
% Z3 = stable(1.3, 0, 1, 3, 100000,s); Z3 = Z3(Z3>-6); Z3 = Z3(Z3<6); 
% [f1,x1] = ksdensity(Z1);
% [f2,x2] = ksdensity(Z2);
% [f3,x3] = ksdensity(Z3);
% subplot(1,2,1)
% plot(x1, f1, '--r', 'LineWidth', 2); hold on;
% plot(x2, f2, '--g', 'LineWidth', 2); hold on;
% plot(x3, f3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\mu = -2','\mu = 1', '\mu = 3','Location','NorthEast')
% 
% [y1,xx1] = ecdf(Z1);
% [y2,xx2] = ecdf(Z2);
% [y3,xx3] = ecdf(Z3);
% subplot(1,2,2)
% plot(xx1, y1, '--r', 'LineWidth', 2); hold on;
% plot(xx2, y2, '--g', 'LineWidth', 2); hold on;
% plot(xx3, y3, '--b', 'LineWidth', 2); hold off
% xlim([-5 5]); legend('\mu = -2','\mu = 1', '\mu = 3','Location','NorthWest')
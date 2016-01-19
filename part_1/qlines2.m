function [quan] = qlines2(X, q, t, tau)

    index = length(0:tau:1);
   [M, N] = size(X);
   XS = sort(X);
   f = XS(round(M*q),:);
   quan = f(:, index);
   plot(t, f');
   xlim([min(t) max(t)]);
end
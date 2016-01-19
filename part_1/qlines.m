%quantile line for stochastic process
%P(X<=xq)=q  xq - quantile q (in financial contect is a risk measure: value
%at risk
% xp=F^(-1)(q)
%x(t) is stochastic process
%P(x(t)<=fq(t))=q     fq(t) - quantile line
function [quan]=qlines(X,q,t,dt)
%X matrix of trajectoris of the same length
%q vector of quantiles q=[0.05 0.95]
index=length(0:dt:1);
[M,N]=size(X);
XS=sort(X);
f=XS(round(M*q),:);
quan=f(:,index);
plot(t,f')
xlim([min(t) max(t)])
end
%cumsum(normrnd(0,1,1,1000))
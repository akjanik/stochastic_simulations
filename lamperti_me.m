close all; clear all; clc;
T=3;
I=1000;
dT=T/I;
t=0:dT:T;
te=exp(t);
alfa=1.8;
beta=0;
mu=0;
N=1000;
lam = zeros(N, N + 1);
for i=1:N
    i
    Y = zeros(1, length(te)-1);
    Y0=stable(alfa,beta,1,mu,1);
    for j=1:length(te)-1
        Y(j)=stable(alfa, beta, (te(j+1)-te(j))^(1/alfa) ,mu, 1);
    end
    X=exp(-t(1:end)/alfa).*(cumsum([Y0,Y]));
    lam(i,:) = exp(-t(1:end)/alfa).*(cumsum([Y0,Y]));
end
q=0.1:0.1:0.9;
qlines(lam,q,t(1:length(lam)),dT)
% hold on
% for i=1:length(ans)
%     plot(t,ans(i)*t.^(1/alfa),':k')
% end
% hold on
% plot(t(1:length(lam)),lam(1,:),'LineWidth',3)
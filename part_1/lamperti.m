close all; clear all; clc;
%lamperti transformation of levy motion
T=5;
I=1000;
dT=T/I;
t=0:dT:T;
te=exp(t);
alfa=1.9;
beta=0;
mu=0;
N=1000;
for i=1:N
    Y0 = stable2(alfa,beta,1,mu,1);
    for j=1:length(te)-1
        sigma=(te(j+1)-te(j))^(1/alfa);
        Y(j)=stable2(alfa,beta,sigma,mu,1);
    end
    X=exp(-t(1:end)/alfa).*(cumsum([Y0,Y]));
    lam(i,:)=X;
end
q=0.1:0.1:0.9;
qlines2(lam,q,t(1:length(lam)),dT)
% hold on
% for i=1:length(ans)
%     plot(t,ans(i)*t.^(1/alfa),':k')
% end
% hold on
% plot(t(1:length(lam)),lam(1,:),'LineWidth',3)
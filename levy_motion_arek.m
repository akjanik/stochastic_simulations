clear all; close all;
alpha=1.6;
beta=0;
T=5;
I=1000;
dT=T/I;
sigma=dT^(1/alpha);
mu=0;
t=0:dT:T;
for i=1:2000
    X=cumsum(stable(alpha,beta,sigma,mu,length(t)-1 ));
    mat(i,1:length([0,X]))=[0,X];
end

qlines(mat, 0.1:0.1:0.9 ,t,dT);
hold on
stairs(t,[0,X],'k')
for i=1:length(ans)
plot(t,ans(i)*t.^(1/alpha),':k')
end
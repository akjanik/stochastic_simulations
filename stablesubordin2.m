clc
clear all
close all
n=1000;
int=1;
alf=0.7;

for j=0.05:0.3:0.95
del=j;
delta(int)=j;
    for i=1:poissrnd(del^-alf,1);
        X(i,1:n)=(1/(del^alf)*(rand(1,n))).^(-1/alf);
    end
X(X<del)=1;
Y(int,1:n)=sum(X);
int=int+1;

end

colorstring = 'kgry';
stab=stable(alf,gamma(1-alf*cos(pi*alf/2)),1,0,n);
for i=1:4
[f,b]=ecdf(Y(i,:));

bp=b(b>0);
f=(f(b>0));

[fthe,bthe]=ecdf(stab);
bth=(bthe(bthe>0));
fthe=(fthe(bthe>0));
plot(log(bp),log(1-f), 'Color', colorstring(i),'LineWidth',2)
legend(num2str(delta'))
hold on

end

plot(log(bth),log(1-fthe),'LineWidth',3)
xlabel('log(x)'); ylabel('log(1 - F(x))')
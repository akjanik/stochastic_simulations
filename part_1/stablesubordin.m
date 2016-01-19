
clear all
close all
n=10000;
int=1;
alf=0.7;
for j=0.05:0.1:0.35
    del=j;
    for i=1:poissrnd(del^-alf,1);
        X(i,1:n)=(1/del*(1-rand(1,n))).^(-1/alf);
    end
    X(X<1)=1;
    Y(int,1:n)=sum(X);
    int=int+1;
end
colorstring = 'kbgry';
for i=1:4
    [f,b]=ecdf(Y(i,:));

    bp=b(b>0);
    f=(f(b>0));
    plot(log(bp),log(1-f), 'Color', colorstring(i))
    hold on
end
xlabel('log(x)'); ylabel('log(1 - F(x))')
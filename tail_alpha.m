clear all; close all;
y=stable2(1.5,0,30,1,100000);
% [a,b]=hist(y,1000);
% L=b(2)-b(1);
% area=sum(L-a);
% A=a/area;
[f,b]=ecdf(y);

bp=b(b>0);
f=(f(b>0));
plot(log(bp),log(1-f))
cftool(log(bp),log(1-f))
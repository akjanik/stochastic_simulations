clear all; close all
y=stable2(0.75,0.5,0,1,10000);

[a,b]=hist(y,100);
yy=normpdf(b,0,10*sqrt(2));
L=b(2)-b(1);
area=sum(L*a);
A=a/area;
%bar(b,A);
figure(1)
hold on
plot(b,A,'.g')
xlim([-4 4])
hold on;
plot(b,yy,':r')
cdf(1)=0;
for i=2:length(A)
    cdf(i)=trapz(b(1:i),A(1:i));
end
figure(3)
plot(b,cdf,'.')
hold on
plot(b,normcdf(b,0,10*sqrt(2)),':r');
bp=b(b>0);
cdfp=cdf(b>0);
figure(2)
plot(log(bp),log(1-cdfp))
%%
figure(4)
hold on
plot(b,log(A),'gx')
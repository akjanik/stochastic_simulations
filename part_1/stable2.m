function Y=stable2(alf,bet,sig,mi,n)

% n=10000;
% bet=0;
% mi=0; %delta
% sig=30; %gamma
% alf=1.5;
V=rand(1,n)*pi-pi/2;
W=exprnd(1,1,n);


O=atan(bet*tan(pi*alf/2))/alf;

%if alf<>1
X(1,1:n)=((sin(alf*(O+V)))./(cos(alf*O)*cos(V)).^(1/alf)).*((cos(alf*O+(alf-1)*V))./(W)).^((1-alf)/alf);

% if alf=1
%X(1,1:n)=(2/pi)*((pi/2)+bet*V)*tan(V)-bet*log(((pi/2)*W*cos(V))./(pi/2+bet*V));
 
Y=sig*X+mi;


Y=Y';
end
% [f,x]=ecdf(Y);
% plot(x,f)
% figure(2)
% 
% 
% xp=x(x>0);
% fp=f(x>0);
% 
% figure(3)
% 
% plot(log(xp),log(1-fp))
% cftool(log(xp),log(1-fp))
% [h,p]=lillietest(Y)
% 
% 
% plot(b,log(a))
% 
% [a,b]=hist(Y,100);

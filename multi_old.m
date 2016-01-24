clear all
clc
n=1000;
alf=1.9;
Z1=stable(alf,1,1,0,n);
Z2=stable(alf,1,1,0,n);
Z3=stable(alf,1,1,0,n);
Z4=stable(alf,1,1,0,n);

Z12=stable(alf,1,1,0,n);
Z22=stable(alf,1,1,0,n);
Z32=stable(alf,1,1,0,n);
Z42=stable(alf,1,1,0,n);

%gam=0.5; % sum of gamma =1
% X1=gam^1/alf*(Z1-Z3);
% X2=gam^1/alf*(Z2-Z4);
% data=[X1,X2];
gam1=0.6; gam2=0.1; gam3=0.7; gam4=0.2;  %wagi
X1=gam1^1/alf*(Z1+Z2)/sqrt(2)-gam2^1/alf*(Z3+Z4)/sqrt(2);
X2=gam3^1/alf*(Z12+Z32)/sqrt(2)-gam4^1/alf*(Z22+Z42)/sqrt(2);
% X1=gam^1/alf*(Z1+Z2+Z3+Z4)/4;
% X2=gam^1/alf*(Z1+Z2)/2-gam^1/alf*(Z3+Z4)/2;
data=[X1',X2'];
 %data=[randn(500,2);
      %randn(500,1)+3.5, randn(500,1);];
  % call the routine
    [bandwidth,density,X,Y]=kde2d(data);
  % plot the data and the density estimate
  %subplot(2,1,1)
    contour3(X,Y,density,50), hold on
    plot(data(:,1),data(:,2),'r.','MarkerSize',5)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     
%     X1=gam1^1/alf*(Z1+Z2)/sqrt(2)-gam2^1/alf*(Z3+Z4)/sqrt(2);
% X2=gam3^1/alf*(Z1+Z3)/sqrt(2)-gam4^1/alf*(Z2+Z4)/sqrt(2);
% data=[X1,X2];
% [bandwidth,density,X,Y]=kde2d(data);
%     subplot(2,1,2)
%     contour3(X,Y,density,50), hold on
%     plot(data(:,1),data(:,2),'r.','MarkerSize',5)
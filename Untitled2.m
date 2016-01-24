close all; clear all; clc;
n=7;
t=100;
subplot(3,2,1) %FGN H=1/2
u1=usg(1/2,n);
plot(u1)
hold on
plot(zeros(2^n),'r')
xlim([1,length(u1)])
ylabel('H=0.5')

subplot(3,2,3) %FGN H<1/2
u2=usg(0.2,n);
plot(u2,'r')
hold on
plot(zeros(2^n))
xlim([1,length(u2)])
ylabel('H=0.2')

subplot(3,2,5) %FGN H>1/2
u3=usg(0.8,n);
plot(u3,'k')
hold on
plot(zeros(2^n),'r')
xlim([1,length(u3)])
ylabel('H=0.8')

subplot(3,2,2) %autoco H=1/2
H=1/2;
autocorr(cumsum(u1),70)
% hold on
% plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.5')

subplot(3,2,4) %auocor H<1/2
H=0.3;
autocorr(cumsum(u2),70)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.2')

subplot(3,2,6) %auocor H>1/2
H=0.8;
autocorr(cumsum(u3),70)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.8')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
subplot(3,2,1) %FBM H=1/2
plot(cumsum(u1))
ylabel('H=0.5')

subplot(3,2,3) %FBM H<1/2
plot(cumsum(u2))
ylabel('H=0.2')

subplot(3,2,5) %FBM H>1/2
plot(cumsum(u3))
ylabel('H=0.8')



subplot(3,2,[1 3 5])
plot(cumsum(u1))
hold on
plot(cumsum(u2),'r')
hold on
plot(cumsum(u3),'k')
xlim([1,length(u1)])
legend('H=0.5','H=0.2','H=0.8')


subplot(3,2,2) %autoco H=1/2
H=1/2;
autocorr(u1,10)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.5')

subplot(3,2,4) %auocor H<1/2
H=0.3;
autocorr(u2,10)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.2')

subplot(3,2,6) %auocor H>1/2
H=0.7;
autocorr(u3,10)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.8')

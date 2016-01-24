figure(2)
subplot(3,1,1) %FBM H=1/2
plot(cumsum(u1))
ylabel('H=0.5')

subplot(3,1,2) %FBM H<1/2
plot(cumsum(u2))
ylabel('H=0.2')

subplot(3,1,2) %FBM H>1/2
plot(cumsum(u3))
ylabel('H=0.8')



subplot(3,1,[1 2 3])
plot(cumsum(u1))
hold on
plot(cumsum(u2),'r')
hold on
plot(cumsum(u3),'k')
xlim([1,length(u1)])
legend('H=0.5','H=0.2','H=0.8')

figure(3)
subplot(3,1,1) %autoco H=1/2
H=1/2;
autocorr(u1,10)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.5')

subplot(3,1,2) %auocor H<1/2
H=0.3;
autocorr(u2,10)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.2')

subplot(3,1,3) %auocor H>1/2
H=0.7;
autocorr(u3,10)
hold on
plot(1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H)))
ylabel('H=0.8')

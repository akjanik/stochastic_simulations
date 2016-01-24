function Y=FA2(Hurst)
% m=10; %length of FBM = 2^m
% u1=usg(Hurst,m);
% u1=u1(1:1000);
% FBM=cumsum(u1);%+normrnd(0,0.25,1,length(u1));

x=fftlfsn(Hurst,1.8,256,6000,1,2^14-6000,1);   % FSM
FBM=cumsum(x(1:10000));

int=1;
for box=50:50:1000;  % #boxes
    
    jump=floor(length(FBM)/box);  %length of box
    length(FBM(jump:end));
    length(FBM(1:end-jump));
    quot(1:length(FBM)-jump)=(FBM(jump:end-1)-FBM(1:end-jump));
    F(int)=sqrt((mean(quot.^2))-(mean(quot))^2);
    Z(int)=box;
    int=int+1;
end
p=polyfit(-log(Z),log(F),1);
%plot(-log(Z),log(F))
Y=p(1);
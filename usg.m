function Y=usg (H_,N_)
%H    - parametr skali
%2^N  - liczba punktów


H = H_;
N = 2^N_;
M = 2*N;

t1 = 0:M/2;
t2 = M/2-1:-1:1;

V = zeros(1,M);


gamma = gam([t1,t2],H);

Sc = fft(gamma,M);
S = real(Sc(1:M/2+1));


if any(S<0)
   error('B??d w algorytmie');
end;

randn('state',sum(100*clock));


W = randn(1,M);
V(1) = sqrt(S(1))*W(1);
V(2:M/2) = sqrt(S(2:M/2)/2).*(W(2:2:M-2)+i*W(3:2:M-1));
V(M/2+1) = sqrt(S(M/2+1))*W(M);
V(M/2+2:end) = conj(V(M/2:-1:2));
Yc = 1/sqrt(M)*fft(V,M);
Y = real(Yc(1:N));

%plot(Y);

function g = gam(t,H)

g = 1/2*(abs(t+1).^(2*H)-2*abs(t).^(2*H)+abs(t-1).^(2*H));
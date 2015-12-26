function Y=stable(alpha,beta,sigma,mu,n)

a = -pi; b = pi;
V = (b - a).*rand(1,n) + a;
W = exprnd(1, 1, n);

B = atan(beta * tan(pi*alpha/2) ) / alpha;
S = (1 + beta.^2 * (tan(pi*alpha/2)).^2 ).^( 1/(2*alpha) );


if alpha ~= 1
    X = S .* ...
        sin( alpha .* (V + B) ) ./ ( cos(V).^(1./alpha) ) .* ...
        ( cos( V - alpha.*(V + B) ) ./ W ).^( (1 - alpha)./alpha );
else
    X = 2/pi .* ( (pi/2 + beta.*V) .* tan(V) - ...
        beta .* log( ( pi/2 .*W.*cos(V) ) ./ ( pi./2 + beta.*V ) ) );
end

Y=sigma.*X + mu;
%Y=Y';
end


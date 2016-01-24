function Y=stable3(alpha, beta, sigma, mu, n)
%a = -pi/2; b = pi/2;
%V = (b - a).*rand(1,n) + a;
V=pi.*(rand(1,n)-1/2);
%W = exprnd(1, 1, n);
W = -log(rand(1,n));

B = atan(beta * tan(pi*alpha/2) ) / alpha;
S = (1 + beta.^2 * (tan(pi*alpha/2)).^2 ).^( 1/(2*alpha) );


if alpha ~= 1
    X = S .* ...
        sin( alpha .* (V + B) ) ./ ( cos(V).^(1./alpha) ) .* ...
        ( cos( V - alpha.*(V + B) ) ./ W ).^( (1 - alpha)./alpha );
    Y=sigma.*X + mu;
else
    X = 2/pi .* ( (pi/2 + beta.*V) .* tan(V) - ...
        beta .* log( ( pi/2 .*W.*cos(V) ) ./ ( pi./2 + beta.*V ) ) );
    Y=sigma.*X + 2/pi * beta * sigma*log(sigma) + mu;
end


Y=Y';
end


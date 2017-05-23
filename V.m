function out = V(x,Ts,e)
x1 = x(:,1)';
x2 = x(:,2)';

out = min([abs(x1-x2); 2*Ts + 2*e*Ts^2 - abs(x1-x2)]);


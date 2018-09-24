clear all
Nmax = 100;
mu = 4;
eps = 0.001;
x(1) = rand;
y(1) = x(1)+eps;

for i = 1:Nmax - 1
   x(i+1) = mu*x(i)*(1-x(i));
   y(i+1) = mu*y(i)*(1-y(i)); 
end

figure(10)
plot(x,'b*-')
hold on
plot(y,'r*-')
xlabel('number of iterations')
ylabel('iterated point')
title('Logistic map with chaos : Chaos 2 very close initial conditions show different paths')
hold off

figure(11)
plot(x-y, '*-') % The difference between x and y graphed along a line

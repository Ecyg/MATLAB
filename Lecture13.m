% Lecture 13

% Lorenz Equation
%  x' = ro*(y - x)
%  y' = p*x - y - x*z
%  z' = x*y - beta*z

global ro p beta

ro = 10;
p = 28;
beta = 2.6667;

[t,y] = ode45(@lorenz, [0,100], [1,1,1]);

figure(1)
subplot (2,2,1)
plot(y(:,1), y(:,2))
xlabel('x'); ylabel('y');
grid on


subplot (2,2,2)
plot(y(:,1), y(:,3))
xlabel('x'); ylabel('z');
grid on


subplot (2,2,3)
plot(y(:,2), y(:,3))
xlabel('y'); ylabel('z');
grid on


subplot (2,2,4)
plot3(y(:,1), y(:,2), y(:,3))
xlabel('x'); ylabel('y'); zlabel('z')
grid on

function DY = lorenz(t,y)
global ro p beta
eq1 = ro*(y(2) - y(1));
eq2 = p*y(1) - y(2) - y(1)*y(3);
eq3 = y(1)*y(2) - beta*y(3);

DY = [eq1;eq2;eq3];

end

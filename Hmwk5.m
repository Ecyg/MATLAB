%Homework 5 
%Competing Species ODE Solver

% x' = ax(1-x)-bxy
% y' = cy(1-y)-dxy

% a = 3
% b = 2
% c = 4
% d = 3

% Plot x(t) vs t and y(t) vs t on the same graph
% Plot y(t) vs x(t)

% Find your own limits of integration and inital conditions
clear all
global a b c d
a = 3;
b = 2;
c = 4;
d = 3;
t0 = 0; %Time should always begin with 0
tf = 10; %How long will this simulation last?
y0 = [0.5;1]; % Initial conditions. Mess with these

[t,y] = ode45(@preypredator, [t0,tf], y0);

figure(1)
plot(t, y(:,1), t, y(:,2))
grid on
title('x(t) and y(t) vs t')
xlabel('t');
ylabel('x(t) and y(t)');
legend('x(t)','y(t)');

figure(2)
plot(y(:,2), y(:,1))
grid on
title('y(t) vs x(t)');
xlabel('x(t)');
ylabel('y(t)');

function DY = preypredator(t,y)
    % y(1) = x
    % y(2) = y
    global a b c d
    eq1 = (a*y(1))*(1-y(1))-(b*y(1)*y(2));
    eq2 = (c*y(2))*(1-y(2))-(d*y(1)*y(2));

    DY = [eq1; eq2];
end

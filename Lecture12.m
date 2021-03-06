%Rigid Body
clear all
global alpha
alpha = -0.51;  % Mess with this value

[t,y] = ode45(@rigid2, [0,50], [0,1,1]);

figure(10)
plot(t,y(:,1), '-', t, y(:,2), '-.', t, y(:,3), '.')
grid on
legend('y_1', 'y_2', 'y_3');
xlabel('t');
ylabel('y_i');



%--------------------------
% 3D Plot
%---------------------------
figure(11)
plot3(y(:,1), y(:,2), y(:,3))
title('Rigid motion in 3D')
xlabel('y_1');
ylabel('y_2');
zlabel('y_3');
grid on

%---------------------------
% Animated Plot / Animation
%---------------------------
hold on  % This is needed for the anitmation plot
%Set markers for the orbit
bead = line(y(:,1), y(:,2), y(:,3), 'marker', 'o', 'markersize', 8);
trail = line(y(:,1), y(:,2), y(:,3), 'marker', '.', 'color', 'r');
view(3);

% Work and Action
for k = 1:length(y)
    set(bead, 'xdata', y(k,1), 'ydata', y(k,2), 'zdata', y(k,3));
    set(trail, 'xdata', y(1:k,1), 'ydata', y(1:k,2), 'zdata', y(1:k,3));
    drawnow;
end
hold off



%-----------------------------
%    Van der Pol Equation
%-----------------------------

%x'' - m*(1-x^2)x'+x = 0
% becomes
% x' = y
% y' = m*(1-x^2)y - x

clear all
global mu
mu = 1.5;
t0 = 0;
tf = 100;
y_init = [0,2];
[t,y] = ode45(@vanderpol, [t0,tf], y_init);
figure(12)
plot(t, y(:,1), t,y(:,2))
grid on
xlabel('y_1');
ylabel('y_2');


%--------------------------
%   Animation for this?
%----------------------------

figure(23)
plot3(t, y(:,1), y(:,2))
grid on


%-------------------
% 2D animation for Van Der Pol
%---------------------

j = 1; %j = 2 is y, j=1 is x
figure(30)
plot(t, y(:,j))
grid on
hold on

%-----Animation Section------
bead = line(t, y(:,j), 'marker', 'o', 'markersize', 8);
trail = line(t, y(:,j), 'marker', '.', 'color', 'r');

for k = 1 : length(y)
   set(bead, 'xdata', t(k), 'ydata', y(k,j));
   set(trail, 'xdata', t(1:k), 'ydata', y(1:k,j));
    drawnow;
end

hold off



%-------------------
% 3D animation for Van Der Pol
%---------------------

figure(40)
plot3(t, y(:,1), y(:,2))
grid on
hold on

%-----Animation Section------
bead = line(t, y(:,1), y(:,2), 'marker', 'o', 'markersize', 8);
trail = line(t, y(:,j), y(:,2),'marker', '.', 'color', 'r');

for k = 1 : length(y)
   set(bead, 'xdata', t(k), 'ydata', y(k,1), 'zdata', y(k,2));
   set(trail, 'xdata', t(1:k), 'ydata', y(1:k,1), 'zdata', y(1:k,2));
    drawnow;
end

hold off

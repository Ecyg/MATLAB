%Lecture 11 : Lecture 8 Notes

%-------Harmonic Oscillator---------------

%-----define x''+mu(x')+omega^2(x) = 0
%-----Rewrite it as y' = -mu(x')-omega^2(x)

%Playing with the variables will change the changes in pendulum motion
clear all
global mu w   %mu and omega

mu = 1; %mu value
w = 3; % omega value

t0 = 0;
tf = 30;  % Mess with this variable. Increase it, decrease it, etc

y0 = [3,1];  % Mess with the variables of this. Make it large/small

[t,y]=ode45(@harm, [t0,tf], y0);

figure(1)
plot(y(:,1), y(:,2))
grid on
title('solutions of Harmonic motion')
xlabel('y1(t)')
ylabel('y2(t)');

figure(2)
plot(t, y(:,1));
hold on
plot(t,y(:,2))
hold off




%-----------------------------------
% x' = y*z
% y' = -x*z
% z' = alpha*x*y
%------------------------------------

%Replace each variable with x = y(1), y = y(2), z = y(3)
% y'(1) = y(2)*y(3)
% y'(2) = -y(1)*y(3)
% y'(3) = alpha*y(1)*y(2)

clear all
global alpha
alpha = -0.51;  
t0 = 0; %Starting time
tend = 50; % Ending time
y_init = [0;1;1];   % Initial conditions for y(1), y(2), y(3)

%saving to [t,y] the results of rigid, from t0 to tend, with y_init as
% the initial conditions
[t,y] = ode45(@rigid, [t0,tend], y_init); 

%Can also be written as : 
% [t,y] = ode45(@rigid, [0,50], [0 1 1])

figure(20)
plot(t,y(:,1), '-', t,y(:,2), '--', t, y(:,3), '.')
grid on
xlabel('t');
ylabel('y_i');
legend('y(1)', 'y(2)','y(3)')


%-----Damped Motion-----------
%plotting t vs x
figure(11)
plot(t,y(:,1))
grid on
title('Damped Motion')
xlabel('t');
ylabel('y1(t)');



function [dFdt] = rigid(t,y)
global alpha
eq1 = y(2)*y(3);
eq2 = -y(1)*y(3);
eq3 = alpha*y(1)*y(2);
dFdt = [eq1; eq2; eq3];
end


function [dvdt] = harm(t,v)
global mu w

f1 = v(2);
f2 = -mu*v(2)-w^2*v(1);

dvdt = [f1; f2];
end

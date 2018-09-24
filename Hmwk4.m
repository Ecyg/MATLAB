% Hmwk 4

%Part 1
clear all
mu_vector = 0 : 0.01 : 5; % Mu Vector (array of mu's)
Nmu = length(mu_vector); %variable equal to the length of mu_vector

N = 1000; % Number of iterations for EACH mu
Npt = 40; % Last number of Npt to plot

for j = 1 : Nmu-1
    mu = mu_vector(j);
    x(1) = rand;
    for i = 1: N
       x(i+1) = mu*cos(x(i)); 
    end
figure(100)
plot(mu, x(end-Npt:end), '.')% x[last array indice - 20 : last indice]
title('Bifurcation Diagram of Logistic Map')
grid on
xlabel('\mu');
ylabel('fixed point x^*');
hold on
end

hold off

%Part 2
clear all
imax = 5000; % Number of iterations
lyap = []; % To collect the local Lyapunov Exponents
muvect = 0 : 0.01: 5; % Varying mu
nnmu = length(muvect);

for j = 1:nnmu
    mu = muvect(j);
    x(1) = rand;
    sum = 0;
    for i = 1:imax-1 % to calculate each local Lyapunov Exponents
       sum = sum + log(abs(mu*sin(x(i)))); % This is f'(x). %Remember abs
       x(i+1) = mu*cos(x(i)); % This is f(x), the function
    end
    lyap(j) = sum/imax; % The average of all local Lyapunov Exponents
end

figure(101)
plot(muvect, lyap)
xlabel('\mu')
ylabel('\lambda')
grid on


%Part 3 - With what mu value would give you a 2 cycle?
% Plot a input vs. iteration number graph showing this
clear all
Nmax = 100;
mu = 1.5;
x(1) = rand;

for i = 1 : Nmax -1
    x(i+1) = mu*cos(x(i));
end
figure(1)
plot(x)
x'

% mu = 1.5 is one of the 2 cycles in this particular example

%Part 4 - Mu value that shows 4 cycle
clear all
Nmax = 100;
mu = 1.9;
x(1) = rand;

for i = 1 : Nmax -1
    x(i+1) = mu*cos(x(i));
end
figure(1)
plot(x)
x'

% m = 1.9 is one of the 4 cycles in this particular example

%Part 5 - Mu value that shows 3 cycle
clear all
Nmax = 100;
mu = 2.32;
x(1) = rand;

for i = 1 : Nmax -1
    x(i+1) = mu*cos(x(i));
end
figure(1)
plot(x)
x'

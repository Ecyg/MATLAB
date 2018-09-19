%Lecture 6 - Bifurcation Diagrams
%-------------------------------------------------
%-----Creating a plot of fixed points vs mu------
%-------------------------------------------------

%Imagine an Iterated Map (Lecture 5) with a variable mu value

% This one doesn't work :(

clear all
muvector = 0 : 0.01 : 4; %mu will vary from 0-4 
nmu = length(muvector); % counts a number of mu to be executed
n = 1000; %number of iterations. number of points generated
Npt = 50; %last number of points to be displayed from each sequence
fixpt = []; %Empty vector to collect fixed points

for j = 1: nmu % Iterated map for each mu
   mu = muvector(j); % Select a particular mu
   x(1) = rand; % Random inital point from 0 to 1
   for i = 1:n
      x(i+1) = mu*x(i)*(1-x(i)); 
   end
end

fixpt = [fixpt; x(end-Npt:end)];  % Collect the last 50 points
figure(100);
plot(mu, x(end-Npt:end), '.');
grid on
xlabel('\mu')
ylabel('fixed point')
hold on
hold off






%-------------------------------------------------------
%               In Class Examples -- This one works!!
%--------------------------------------------------------


clear all
tic; %Start the timer
mu_vector = 0 : 0.01 : 4; % Mu Vector (array of mu's)
Nmu = length(mu_vector); %variable equal to the length of mu_vector

N = 1000 % Number of iterations for EACH mu
Npt = 40; % Last number of Npt to plot

for j = 1 : Nmu
    mu = mu_vector(j);
    x(1) = rand;
    for i = 1: N
       x(i+1) = mu*(1-x(i))*x(i); 
    end
figure(100)
plot(mu, x(end-Npt:end), '.')% x[last array indice - 20 : last indice]
axis([0 4 0 1])
title('Bifurcation Diagram of Logistic Map')
grid on
xlabel('\mu');
ylabel('fixed point x^*');
hold on
end

hold off
toc;


%----------------------------------------------------
%    Lyapunov Exponents vs mu Diagram
%-----------------------------------------------------

clear all
imax = 5000; % Number of iterations
lyap = []; % To collect the local Lyapunov Exponents
muvect = 0 : 0.01: 4; % Varying mu
nnmu = length(muvect);

for j = 1:nnmu
    mu = muvect(j);
    x(1) = rand;
    sum = 0;
    for i = 1:imax-1 % to calculate each local Lyapunov Exponents
       sum = sum+log(abs(mu-2*mu*x(i))); % This is f'(x)
       x(i+1) = mu*x(i)*(1-x(i)); % This is f(x), the function
    end
    lyap(j) = sum/imax; % The average of all local Lyapunov Exponents
end

figure(101)
plot(muvect, lyap)
xlabel('\mu')
ylabel('\lambda')
grid on
hold on
plot([0 4], [0 0], 'r--')
hold off

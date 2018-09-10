%Matthew Moore
%Homework Assignment 2
%Random Walk

%Figure 1 is Normal Distribution - 1 person
%Figure 2 is Normal Distrubution - 10 people

%Figure 3 is Uniform Distriibution - 1 person
%Figure 4 is Uniform Distribution - 10 people

% Using NORMAL DISTRUBUTION, N(0,1) [Mean is 0, Standard Deviation is 1]
% make a random walk for 1000 steps. Imagine a drunk sailor walking home
%Plot this
clear all
mu = 0;
sigma = 1;
x = 0;
nmax = 1000;
for n = 1 : nmax-1
   x(n+1) = x(n)+(mu+sigma*randn);
end
figure(1)
plot(1:nmax,x)
title('Random Walk with Normal Distrubution')
xlabel('Steps')





%Repeat the first part 10 times and combine them all into one graph
%What do you observe and conclude?
all = 10;
for path = 1:all
   for n = 1:nmax-1
      x(n+1) = x(n)+(mu+sigma*randn); 
   end
   figure(2)
   plot(1:nmax,x)
   hold on
end
title('Random Walk with Normal Distrubution - 10 people')
xlabel('Steps')
grid on
hold off



%Plot a random walk for a drunk sailor by using UNIFORM DISTRIBUTION 
% over [0,1] for 1000 steps. Plot this.
mu2 = 0;
sigma2 = 1;
x2 = 0;
nmax2 = 1000;
for n = 1 : nmax2-1
   x2(n+1) = x2(n)+(mu2+sigma2*rand);
end
figure(3)
plot(1:nmax2,x2)
title('Random Walk with Uniform Distrubution')
xlabel('Steps')



%If you repeat the above process 10 times, combine them into 1 plot. 
% What do you observe and conclude.
for path = 1:all
   for n = 1:nmax2-1
      x2(n+1) = x2(n)+(mu2+sigma2*rand); 
   end
   figure(4)
   plot(1:nmax2,x2)
   hold on
end
title('Random Walk with Normal Distrubution - 10 people')
xlabel('Steps')
grid on
hold off

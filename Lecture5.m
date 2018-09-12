%Lecture 5 : Iterated Map


 


%This converges towards 0


 


% A logistic map for the purpose of this class is 


% f(x) = mu * x * (1-x(i))


 


%------------------------


% in class example


    % x -> mu * x(1-x), x is in [0,1]


%------------------------


clear all


Nmax = 2000; % Max number of iterations


x = zeros(1, Nmax); % initializing a row vector


mu = 4; % As mu increases, the converge point increases. 


%This stops eventually and it osciallates between 2 points


% This is called 2-cycle (or period 2). Then it 4 cycles. 


x(1) = rand;


 


for i = [1 : (Nmax-1)]


   x(i+1) = mu * x(i) * (1 - x(i)); 


end


x'


grid on


plot(x, '*-')


title('Logistic Map');


xlabel('number of Iterations');


ylabel('x(n)');


 


%----------------------


% In this example, we don't initialize a zeros matrix


%------------------------


 


clear all


Nmax = 100;


mu = 0.8;


x(1) = rand;  % the range of x values


 


for i = [1 : (Nmax-1)]


   x(i+1) = mu * x(i) * (1 - x(i)); 


end


x'


plot(1 : Nmax, x, '-*')


 


%---------------


% Chaos in Logistic Maps


%---------------


 


clear all


nmax = 100;


mu = 4;


eps = 0.01;



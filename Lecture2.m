% Lecture 2

%{
Fibonacci Sequence in MATLAB
Golden Ratio in MATLAB




%}

%Producing Fibonacci Sequence : Version 1
%Prints every number from 1 to imax
 imax = 20; %Maximum value for count i
 fib1 = 1; % The first 2 values of the fib 
 fib2 = 1; 
 
 for i = (1:imax) % For variable i from 1 to imax
     fib = fib1+fib2 %#ok<NOPTS> % find our 3rd value (new highest value)
     fib1 = fib2; % % Set fib1 to value of fib2
     fib2 = fib; % Set fib2 to value of fib
 end
 
 
%Producing Fibonacci Sequece : Version 2
%Improved output
imax = 20;
fib1 = 1;
fib2 = 1;
fibN = [fib1, fib2]; %Now it's in a vector/array

for i = (1:imax)
    fib = fib1 + fib2;
    fibN = [fibN,fib]; %#ok<AGROW> %This is to extend the vector
    fib1 = fib2;
    fib2 = fib;
end
fibN' % I took the long vector and transposed it. 

%---------------------------------------------
%Producing Fibonacci Sequence : Version 3
%---------------------------------------------
imax = 20;
fib = (1:imax); % Vector from 1 to imax. Default jump is +1
fib(1) = 1; %First element of fib is 1
fib(2) = 1; %Second element of fib is 1

for i = (1:imax-2)
    fib(i+2) = fib(i) + fib(i+1);
end
fib'

%--------------------------------------------
%Homework Help for Hmwk 2 Part 1
%--------------------------------------------




%function F = fibonacci(n)
%Fn = [1 0];
%F = 0;

%for i = (1:abs(n))
%    Fn(2) = F;
%    F = sum(Fn);
%    Fn(1) = Fn(2);
%end

%if n < 0
%    F = F*((-1)^(n+1));
%end

%end






%Lecture 2 - Random Walks
clear all
F = rand(3,3) % Random 3x3 matrix (from 0 to 1)

%----Random numbers in a histogram
figure(1)
x = rand(1, 20000); % 20k different numbers set to x
hist(x) % Histogram of the x vector

%----Random Numbers from Normal Distribution
F = randn(3,3) %randn is a normal distribution set of random numbers

figure(2)
x = randn(1,900000); % 900k set of random numbers
hist(x)

%--------Make it cleaner
figure(2)
x = randn(1,900000); % 900k set of random numbers
hist(x, 25) % 25 is a bind number, the number of blocks making up the graph


figure(2)
x = randn(1,900000); % 900k set of random numbers
hist(x,500) % See? This one looks better



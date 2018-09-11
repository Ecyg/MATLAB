%Matthew Moore
%Homework Assignment 2
%Fibonaci Sequence

%Clean this up a little

imax = 1000;
fib = (1:imax); % Vector from 1 to imax. Default jump is +1
fib(1) = 1; %First element of fib is 1
fib(2) = 1; %Second element of fib is 1
golden = (1+sqrt(5))/2;

%Create the Fibonacci array
for i = (1:imax-2)
    fib(i+2) = fib(i) + fib(i+1);
end
%fib'


%Golden

%Ok, we now have an array of the fib sequence contained in "fib"
%Place in a new array and divide each new term by it's previous
ratio=[];


%Loop through the fib array and make the golden ratio array
for i = [1:numel(fib)-1]
   % ratio(i) = fib(i+1)/(fib(i));
   if abs((fib(i+1)/fib(i)-golden)) < 10^-10
        x = i+1;
        break;
   end
end

%This is our check. This goes through and checks if each element of ratio
% minus golden is less than 10^-10
abs(ratio-golden) < 10^-10;
x
ratio;
golden;

% n = 26 as it is the first to contain a true statement (this is based of
%our max array size 'imax', which also means how far into the fibonacci 
%sequence we go)

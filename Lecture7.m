%Lecture 7
% I don't understand why this works
clear all
mu_values = 0 : 0.01 : 4;
lambda_values = []; 
jmax = 5000;
imax = length(mu_values);

for i = 1 : imax
    current_mu = mu_values(i);
    x(1) = rand;
    summation = 0;
    for j = 1:jmax-1
        summation = summation+log(abs(current_mu-2*current_mu*x(i))); % This is f'(x)!!
        x(j+1) = current_mu*x(j)*(1-x(j)); % This is f(x)!!!
    end
    lambda_values(i) = summation/imax;
end

figure(1)
plot(mu_values, lambda_values)


%---------------------------------------------------
%   Computer Lyapunov Exponet for Logistic Map
%---------------------------------------------------
clear all;
mu = 3.75;
x(1) = 0.1;
n = 1000;
IterGraph = 50;
Sum = 0;
Liap = 0;
for i = 1:n
    x(i+1) = mu*x(i)*(1-x(i));
    Sum = Sum + log(abs(mu-2*mu*x(i)));
end
LiapunovExponent = Sum/n;
plot(x(1:IterGraph), '*-')

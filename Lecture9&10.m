%This calls a function AND uses ode45 to solve a diffe eq

global alpha beta a b
alpha = 0.2;
beta = 0.3;
a = 0.2;
b = 0.5;
t0 = 0;
tf = 400;
y0 = [0.8; 0.1];

[t,y] = ode45(@preypredator, [t0,tf], y0);
figure(1)
plot(y(:,1), y(:,2))
title('Prey and Predator in 2D')
xlabel('y1(t)');
ylabel('y2(t)');


function DY = preypredator(t,y)
global alpha beta a b
eq1 = y(1)*(alpha-a*y(2));
eq2 = y(2)*(b*y(1)-beta);

DY = [eq1; eq2;];
end



function [infnorm] = max_norm(Mat)
%Compute the maxiumum norm of the given Matrix
dim = size(Mat);
Nrow = dim(1); %Number of rows in the matrix
Ncol = dim(2); %Number of columns in the matrix

max_vector = []; %Collects each column value
for j = 1:Ncol
   max_vector = [max_vector, sum(abs(Mat(:,j)))];     %This means every element in column j
   %this could also be max_vect(j) = sum(abs(Mat(:,j)))
end
infnorm = max(max_vector);
end



%Lecture 9 Functions
function [output] = Lecture9_Functions(v)
%This is to compute an L2 norm of a vector
output = sqrt(sum(v.^2)); % Square each element, sum them up, sqrt it
end



%Lecture 9

%--------------------------------------------------------------
%This program computes ||V||_2: the L2 norm of vector v
%--------------------------------------------------------------
vect = [1,2,3,4,5,6,7,8];
L2 = Lecture9_Functions(vect)

A = [1,2,3,4,5; -3,-6,36,-12,0; 11,22,33,44,55];
infN = max_norm(A);
display('the max norm of matrix A is')
infN

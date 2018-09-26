%This is the first lecture

%Basic Stuff

abs(-100)
pi
3^2*4-3*2*sqrt(16)-sin(1)

%Vectors
a =[1 2 3 4] %a 1x4 row vector
c =[5;6;7;8] %a 4x1 column vector
A =[1 2; 3 4] %a 2x2 matrix
B =[1 2 3; 4 5 6] % a 3x3 matrix

a*c  %should be 70 
c*a %should be a 4x4 matrix

a.^2 %Take each term in the matrix to the power of 2  

%The . means termwise. Otherwise it literally takes a * a

u = 1:2:9 % Starting with 1, jump 2 till 9

%Functions to use
B' % Transposes the matrix B
D = transpose(B)

det(A) % The determinant of A
log(pi) %Log of pi
sqrt(A) %Square Root of each term in A
sum(A) % Sum of each row
mean(A) % Mean of each row
T = eye(4) % creates a 4x4 identity matrix
T(2,3) % Pulls the element at row 2, column 2
T(2,3) = 6 %Sets the elements at  row 2, col 2 to 6
M1 = zeros(3,4) %Sets a zero matrix of size 3x4

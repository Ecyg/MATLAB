
% Hmwk 3 
clear all

nmax = 200;
mu1 = 0.8;
mu2 = 1.004;
mu3 = 1.03;

x(1) = rand;
y(1) = rand;
z(1) = rand;

if (x(1) <= 0.5 )
   for i = [1 : nmax - 1] 
      x(i+1) = mu1*x(i); 
   end
else
    for a = [1 : nmax - 1]
       x(a+1) = mu1*(1-x(a)); 
    end
end
plot(1:nmax,x)

% Mu 2
if (y(1) <= 0.5 )
   for j = [1 : nmax - 1] 
      y(j+1) = mu2*y(j); 
   end
else
    for b = [1 : nmax - 1]
       y(b+1) = mu2*(1-y(b)); 
    end
end
plot(1:nmax,y)

% Mu 3
if (z(1) <= 0.5 )
   for k = [1 : nmax - 1] 
      z(k+1) = mu3*z(k); 
   end
else
    for c = [1 : nmax - 1]
       z(c+1) = mu3*(1-z(c)); 
    end
end
plot(1:nmax,z)

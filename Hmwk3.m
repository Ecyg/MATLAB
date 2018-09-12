% Hmwk 3 


 


 


clear all


nmax = 200;


mu1 = 0.8;


mu2 = 1.004;


mu3 = 1.03;


x = zeros(1, nmax);


y = zeros(1, nmax);


z = zeros(1, nmax);


x(1) = rand;


 


for i = [1 : nmax-1]


    if (x(i) <= 0.5 && x(i) >= 0)


        x(i+1) = mu1*x(i);


        


    elseif (x(i) > 0.5 && x(i) <= 1)


        x(i+1) = mu1*(1-x(i));


        


    end


end


x';


grid on


 


 


% Mu 2


for i = [1 : nmax-1]


    if (x(i) <= 0.5 && x(i) >= 0)


        x(i+1) = mu2*x(i);


        


    elseif (x(i) > 0.5 && x(i) <= 1)


        x(i+1) = mu2*(1-x(i));


        


    end


end


 


 


 


 


% Mu 3


for i = [1 : nmax-1]


    if (x(i) <= 0.5 && x(i) >= 0)


        x(i+1) = mu3*x(i);


        


    elseif (x(i) > 0.5 && x(i) <= 1)


        x(i+1) = mu3*(1-x(i));


        


    end


end

%Lecture 14

%----------------------------
%  Leaky Integrate-and-Fire
%----------------------------

%----------------------------------
%  LIF Neuron Model : V' = V + I
%----------------------------------

%  For discontinous ODEs, such as the LIF Model, ODE45 doesn't work
% Use Euler's Method to numerically compute the voltage solution as
% follows : V(t + dt) = (1 - dt)*V(t)+dt*I

% V = voltage
% I = input current
% V_th = threshold value
% Vr = Voltage Reset value

clear all
I = 2; % Input Current I
Vth = 1; 
Vr = 0;
V(1) = rand; %Initial Condition randomly in [0,1]
dt = 0.01; %time step
t = 0:dt:10; % run for an interval of time
Nmax = length(t);

for k = 1:Nmax-1
   if(V(k) >= Vth)
      V(k) = Vth;
      %disp('reach threshold and fire!')
      V(k+1) = Vr;
   else
       V(k+1) = (1 - dt)*V(k)+dt*I;
   end % end if/else
    
end % end for loop


figure(10)
plot(t,V)
grid on
hold on
plot([0 10] ,[Vth Vth], 'g--');
title('LIF Neuron Model')
xlabel('time'); 
ylabel('voltage');
ylim([-0.1 1.5])
hold off




%LIF with Noise

%LIF Model with noise is V' = -V + I + e(t)
% Where e(t) is gaussian white noise

%Euler's method becomes V(t+dt) = V(t)+dt(-V(t)+I)
%+sqrt(2*D*dt)*randn where randn is Gaussian Distrubution

clear all
I = 2;
Vth = 1;
Vr = 0;
V(1) = rand;
D = 0.3;  % Noise intensity

dt = 0.01;
t = 0:dt:10;
Nmax = length(t);

for k = 1:Nmax-1
   if(V(k) >= Vth)
       V(k) = Vth;
       disp('reach threshold and fire !')
       V(k+1) = Vr;
   else
       V(k+1) = (1 - dt)*V(k)+dt*I+sqrt(2*D*dt)*randn;
       
   end
    
end

figure(10)
plot(t,V)
grid on
hold on
plot([0 10], [Vth Vth], 'g - -');
title('LIF Neuron Model with Noise')
xlabel('time');
ylabel('voltage');
ylim([-0.5 1.5])
hold off

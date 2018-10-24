%Project for class -- user input
clear all
%Ask for Driving Force, time interval, and damping coefficient
global driving_force time_begin time_end damping ang_freq

%{
prompt = 'What is the driving force value for this equation?\n';
driving_force = input(prompt);
prompt1 = 'What is the beginning time in seconds?\n';
time_begin = input(prompt1);
prompt2 = 'What is the ending time in seconds?\n';
time_end = input(prompt2);
prompt3 = 'What is the damping coefficient for the equation? (delta)\n';
damping = input(prompt3);
prompt4 = 'What is the angular frequency?\n';
ang_freq = input(prompt4);
%}
driving_force = 1;
time_begin = 0;
time_end = 100;
damping = 0.5;
ang_freq = 1;

initial_conditions_array = [0.5,1];

%x'' + damping(x')- x + x^3 = driving_force * cos(omega*t)

%Execute it
[t,y] = ode45(@DuffOsc, [time_begin,time_end], initial_conditions_array);

%Plot it
figure(1)
plot(y(:,1), y(:,2)) % plot of y(2) vs y(1)

figure(2)
plot(t,y) %plot vs time?

function DY = DuffOsc(t,y)
    global driving_force time_begin time_end damping ang_freq
       x_1 = y(1);    x_2 = y(2);  
	   dx1= x_2;
	   dx2= -damping*x_2-x_1-x_1^3+driving_force*sin(ang_freq*t);	
       DY = [dx1; dx2];
end

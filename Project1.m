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

driving_force = 7.5;
time_begin = 0;
time_end = 100;
damping = 0.5;
ang_freq = 1;

initial_conditions_array = [0,0];
%x'' + damping(x')- x + x^3 = driving_force * cos(omega*t)

%Execute it
[t,y] = ode45(@DuffOsc, [time_begin,time_end], initial_conditions_array);
[t2,y2] = ode45(@DuffOsc, [time_begin,time_end], [0.01,0.01]);

%Plot it
figure(1)
plot(y(:,1), y(:,2), 'b') % plot of y(2) vs y(1)
hold on
title('Driving Force: 0.1, Damping: 0.1')
xlabel('y(1)')
ylabel('y(2)')

%Plot the fact that it's chaotic
plot(y2(:,1), y2(:,2), 'r')
hold off
figure(2)
plot(t,y) %plot vs time?
title('Driving Force: 0.1, Damping: 0.1')
xlabel('t')
ylabel('y(1),y(2)')

%{

figure(6)

plot(t2,y2) %plot vs time?

title('Driving Force: 0.1, Damping: 0.1')

xlabel('t')

ylabel('y(1),y(2)')

%}


figure(4)
grid on
hold on

%animation part

bead=line(y(:,1),y(:,2), 'marker', 'o', 'markersize', 8);
trail=line(y(:,1),y(:,2),'marker', '.', 'color', 'r');

bead2=line(y2(:,1),y2(:,2), 'marker', 'o', 'markersize', 8);
trail2=line(y2(:,1),y2(:,2),'marker', '.', 'color', 'b');

for k=1:length(y)

   set(bead, 'xdata', y(k,1), 'ydata', y(k,2));
   set(trail, 'xdata', y(1:k,1), 'ydata', y(1:k,2));
   set(bead2, 'xdata', y2(k,1), 'ydata', y2(k,2));
   set(trail2, 'xdata', y2(1:k,1), 'ydata', y2(1:k,2));
   drawnow;

end
hold off

%{

figure(5)

grid on

hold on

%animation part

bead=line(y2(:,1),y2(:,2), 'marker', 'o', 'markersize', 8);

trail=line(y2(:,1),y2(:,2),'marker', '.', 'color', 'r');

for k=1:length(y2)

   set(bead, 'xdata', y2(k,1), 'ydata', y2(k,2));

   set(trail, 'xdata', y2(1:k,1), 'ydata', y2(1:k,2));

   drawnow;

end

hold off

%}

%What's the ending value of the plotted Oscillator and the difference of 0.01 Oscillator  

y(end)
y2(end)



function DY = DuffOsc(t,y)

global driving_force time_begin time_end damping ang_freq
    x_1 = y(1);    
    x_2 = y(2);  
    dx1= x_2;
    dx2= -damping*x_2+x_1-x_1^3+driving_force*cos(ang_freq*t);	
    DY = [dx1; dx2];
end

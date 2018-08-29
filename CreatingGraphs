%Creating Graphs

%Basic plot 1: Single Function
clear all
x = -10:0.01:10;  % Vector from -10 to 10; increment 0.01
y = x.*sin(x.^2); % each term in x times sin of that term ^2
figure(10);
plot(x,y) %Plot it with x as horizontal and y as vertical

%Basic plot 2: Single function with other functions
t = 0:0.005:4;
x = sin(-3*t.*(t-1)).*cos(pi*t); % THis is complex. Look at it
figure(11)
plot(t,x)

%-3*t is a vector, so is (t-1), thus to multiply them, it needs to be term
%by term. Linear Algebra!!!


%Basic Plot 3 : 2 functions in 1 graph
x = -2*pi:pi/50:2*pi;
y = sin(x);
z = x.*sin(x.^2);
figure(30) % Name of the window
plot(x,y,'b--', 'LineWidth',4) %plot x & y with a blue dotted line with Linewidth of 4
hold on % Lets MATLAB know it continue graphing past this
plot(x,z,'r:'); %Plot x & z with a red dot line
xlabel('x'); % X label
ylabel('y(x), z(x)'); %Y Labe
hold off


%Solve equation f(x)=((sin x)^2)*exp(-x/2)-0.1=0, (x>=0)

%Domain
x=0:0.1:10;

%Function to solve
y=((sin(x)).^2).*exp(-x/2)-0.1;

%X-axis
y0=zeros(1,length(x));

%Plotting function f(x)
plot(x,y,'-k',x,y0,'--r')

%Naming the axis
xlabel('x')
ylabel('Function')

pause

%Inputing nearest roots

user_input=input('Value of Roots(insert in matrix form):');

%Solving function
fsolve(@(x) ((sin(x)).^2).*exp(-x/2)-0.1,user_input)
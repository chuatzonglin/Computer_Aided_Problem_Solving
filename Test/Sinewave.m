t=linspace(0,4.7911,10000);
w=linspace(0,2*pi,6);
[new_t new_w]=meshgrid(t,w);
x=new_w.*new_t;
for i=1:6
y=sin(x(i,:));
hold on;
plot(t,y)
end
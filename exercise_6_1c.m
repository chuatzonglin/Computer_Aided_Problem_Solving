[T Vector]=ode45(@derivative_velocity,[0,10],[1,0]);
plot(T,Vector(:,1))
xlabel('Time')
ylabel('Position')
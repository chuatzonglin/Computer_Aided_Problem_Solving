[T, result] = ode45(@derive_fun, [0,10], [0,10]);
plot(T,result(:,1))
function dvdt = derivative_velocity(t,vec)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

m=1;
c=0.8;
k=10;

dvdt=[vec(2); -(c*vec(2)+k*vec(1))/m];
end

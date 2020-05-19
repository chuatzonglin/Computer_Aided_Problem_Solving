function [dp1,dp2] = derivative(t,p1,p2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

w=2;
Lo=1;

dp1 = [p1(2) -w^2*(3*p1(1)-2*p2(1)+Lo)];
dp2 = [p2(2)/2 -(w^2/2)*(-2*p1(1)+3*p2(1)-4*Lo)];
end


function dp = derive_fun(t,p)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here.
m=1;
c=3;
k=7;
dp = [p(2); -(c/m).*p(2)-(k/m).*p(1)];
end


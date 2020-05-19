%Exercise 6.1

syms x(t);
m=1;
c=3;
k=7;

Dx=diff(x(t),t);
ode=m*diff(Dx,t)+c*diff(x)+k*x==0

t=0;
cond1=x(0)==1;
cond2=subs(Dx)==1;
conds=[cond1 cond2];

sol=dsolve(ode,conds)

t=0:0.1:10;
Sol=subs(sol);
plot(t,Sol)
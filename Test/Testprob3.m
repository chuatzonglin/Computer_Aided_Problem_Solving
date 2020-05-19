syms x1(t) x2(t) w Lo

dx1=diff(x1(t),t);
ode1=diff(dx1,t)+w^2*(3*x1(t)-2*x2(t)+Lo)==0;

dx2=diff(x2(t),t);
ode2=diff(dx1,t)+w^2*(-2*x1(t)+3*x2(t)-4*Lo)==0;

t=0;
cond1a=x1(0)==1.5*Lo;
cond1b=subs(dx1)==0;

cond2a=x2(0)==Lo;
cond2b=subs(dx2)==0;

cond1=[cond1a cond1b];
cond2=[cond2a cond2b];

cond=[cond1 cond2];
sol=dsolve(ode1,ode2,cond)
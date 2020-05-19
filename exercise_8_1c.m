%RedBox(40%), 2 apples, 6 oranges
%BlueBox, 3 apples, 1 orange

%P(F=a)

Box=rand(1,1000000)<0.4;
Fruit=rand(1,1000000);

F(Box==1)=Fruit(Box==1)<0.25;
F(Box==0)=Fruit(Box==0)<0.75;

sum(F)/length(F)

F=~F;
F_R=F(Box==1);

sum(F_R)/sum(F)

A=[
0 0 1 1
0 1 2 1
1 3 3 1]

B=[-a*x^3+(9*a-b)x^2+(6*b-18*a)x+6*a-6*b
-3*a*x^2+(18*a-2*b)*x+(6*b-18*a)
-6*a*x+(18*a-2*b)
-6*a]

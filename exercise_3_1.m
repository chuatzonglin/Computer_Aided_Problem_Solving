%Exercise 3.1

X=[0.2 -0.1 1.0; 3.0 0.1 -1.0; 1.0 -2.0 -0.5]
One_Matrix=ones(3,1);

%Unknowns
A=inv(X)*One_Matrix;

a=A(1,1);
b=A(2,1);
c=A(3,1);

Ans=[num2str(a),'x ',num2str(b),'y + ',num2str(c),'z = 1'];
disp(Ans)
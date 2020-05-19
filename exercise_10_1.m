load rating;
R=rating;

[P,D,S]=svd(R);

p=P(:,1:3);
d=D(1:3,1:3);
S_transpose=S';
s=S_transpose(1:3,:);
I=d*s;

Q=[I(:,1) I(:,3) I(:,7)];

Input=[4 2 3];
R=Input/Q;

Result=R*I;
Result=round(Result);
for i=1:20
    if Result(i)==0
        Result(i)=1;
    end
end
Result'

Real=[4 3 2 2 3 3 3 2 3 1 2 3 2 2 3 4 3 3 3 3];
Real'-Result'
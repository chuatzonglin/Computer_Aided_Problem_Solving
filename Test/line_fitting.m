%Line fitting

years=5:5:35;
salary=[370.8 459.4 533.8 597.7 669.7 719.7 753.8];

X=ones(1, length(years));
X=[years;X];

X=X';
y=salary';

p=pinv(X)*y;

xx=1:1:40;

plot(years,salary,'o',xx,xx*p(1)+p(2))

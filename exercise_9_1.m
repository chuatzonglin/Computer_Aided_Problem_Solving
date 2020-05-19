P=19.6^29*exp(-19.6)/factorial(29)

%29 and more
P=0;

%l is the number of occuring frequency
l=0.7*4*7;


for i=0:28

P=P+19.6^i*exp(-19.6)/factorial(i);

end

1-P

%more than 29
P=0;

%l is the number of occuring frequency
l=0.7*4*7;


for i=0:29

P=P+19.6^i*exp(-19.6)/factorial(i);

end

1-P
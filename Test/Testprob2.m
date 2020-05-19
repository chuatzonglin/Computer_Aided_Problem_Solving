%Probability 2

Box=rand(1,10000)<0.4;

Fruit=rand(1,10000);

F(Box==1)=Fruit(Box==1)<0.25;
F(Box==0)=Fruit(Box==0)<0.75;

sum(F==1&Box==1)/10000
sum(F==1&Box==0)/10000
sum(F==0&Box==1)/10000
sum(F==0&Box==0)/10000
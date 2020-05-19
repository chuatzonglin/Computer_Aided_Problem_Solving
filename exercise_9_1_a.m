%Probability for each no. of occurance
%lamda=0.7*28

lambda=0.7*28;

No_of_occurance=poissrnd(lambda,1000000,1);
histogram(No_of_occurance)
xlabel('Possible outcomes')
ylabel('Frequency')

%Probability of 29 and more than 29 occurance
R=No_of_occurance>28;
probability=sum(R)/length(R)


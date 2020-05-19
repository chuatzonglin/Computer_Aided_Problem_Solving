%Loading data file
load A
%Assigning variables
nobel=A(:,1);
choco=A(:,2);
%Plotting data
plot(nobel,choco,"o")
axis([0,35,0,12])
%Creating matrix for calculating regression line
X=ones(length(nobel),2);
X(:,1)=nobel;
Y=choco;
%Calculating variables in regression line
p=pinv(X)*Y;
%Creating x variable for plotting the regression line
xx=0:1:35;
hold on;
%Plotting Final Graph
plot(xx,xx*p(1)+p(2))
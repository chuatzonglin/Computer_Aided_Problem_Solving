%Loading data file
load A
%Assigning variables
nobel=x';
choco=y(3,:);
choco=choco';
%Plotting data
plot(nobel,choco,"o")
%Creating matrix for calculating regression line
X=ones(length(nobel),2);
X(:,1)=nobel;
Y=choco;
%Calculating variables in regression line
p=pinv(X)*Y;
%Creating x variable for plotting the regression line
xx=0:1:100;
hold on;
%Plotting Final Graph
plot(xx,xx*p(1)+p(2))
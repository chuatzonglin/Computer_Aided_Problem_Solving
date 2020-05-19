%Probability

num_bf=zeros(2,2);

for i=1:10000
if rand(1,1)<0.4
    if rand(1,1)<0.25
        num_bf(1,1)=num_bf(1,1)+1;
    else
        num_bf(1,2)=num_bf(1,2)+1;
    end
    
else
    if rand(1,1)<0.75
       num_bf(2,1)=num_bf(2,1)+1;
    else
       num_bf(2,2)=num_bf(2,2)+1;
    end
end
end

num_bf./10000

   
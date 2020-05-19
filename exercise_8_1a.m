%RedBox(40%), 2 apples, 6 oranges
%BlueBox, 3 apples, 1 orange

%P(F=a)

 N_Fa=0;
 n=100000;
for i=1:n
    if rand(1,1)<0.4
        if rand(1,1)<0.25
            N_Fa=N_Fa+1;
        end
    else
        if rand(1,1)<0.75
            N_Fa=N_Fa+1;
        end
    end
end

P_Fa=N_Fa/n

%RedBox(40%), 2 apples, 6 oranges
%BlueBox, 3 apples, 1 orange

%P(B=r|F=o)

N_Fo=0;
N_Br_Fo=0;
n=100000;

for i=1:n
    if rand(1,1)<0.4
        if rand(1,1)<0.75
            N_Fo=N_Fo+1;
            N_Br_Fo=N_Br_Fo+1;
        end
    else
        if rand(1,1)<0.25
            N_Fo=N_Fo+1;
        end
    end
end

P=N_Br_Fo/N_Fo
for a=1:9
    for b=0:9
        for c=0:9
            g=sum([a b c].^3);
            k=a*100+b*10+c;
            if g==k
               disp([a b c])
                   
            else
            end
        end
    end
end
                
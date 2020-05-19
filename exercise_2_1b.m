for i = 100:999
i3 = mod(i, 10);
i2 = mod(floor(i/10), 10);
i1 = floor(i/100);

variable1=sum([i1 i2 i3].^3);

if variable1==i
    disp([i1 i2 i3])
end
end
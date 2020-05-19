t=linspace(0,4.7911,10000);
w=linspace(0,2*pi,6);
[new_t new_w]=meshgrid(t,w);
x=new_w.*new_t;
for i=1:6
y=sin(x(i,:));
hold on;
plot(t,y)
end

pause

[Fs,f]=audioread('test.wav');
t=linspace(0,4.7911,length(Fs));
interference=sin((100*pi).*t);
interference=interference';
new_Fs=Fs+interference;
sound(Fs,f)
pause
sound(new_Fs,f)
pause

hold off
plot(t,new_Fs)

pause

F=fft(new_Fs);
x=t-length(Fs)/(2*f);
Fshift=fftshift(F);
plot(x,abs(Fshift));

pause

filter=abs(x)<0.0184638;
plot(x,abs(fftshift(fft(Fs))),x,abs(Fshift-Fshift.*filter'))

filtered=ifft(ifftshift(Fshift-Fshift.*filter'));
sound(real(filtered),f)




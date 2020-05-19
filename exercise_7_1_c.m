[Fs,f]=audioread('test.wav');
t=linspace(0,4.7911,length(Fs));
interference=sin((100*pi).*t);
interference=interference';
new_Fs=Fs+interference;

F=fft(new_Fs);
x=t-length(Fs)/(2*f);
Fshift=fftshift(F);
plot(x,abs(Fshift));

pause

filter=abs(x)<0.0184638;
plot(x,abs(fftshift(fft(Fs))),x,abs(Fshift-Fshift.*filter'))

pause

filtered=ifft(ifftshift(Fshift-Fshift.*filter'));
sound(real(filtered),f)

plot(t,real(filtered),t,Fs)
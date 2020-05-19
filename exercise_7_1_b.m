[Fs,f]=audioread('test.wav');
t=linspace(0,4.7911,length(Fs));
interference=sin((100*pi).*t);
interference=interference';
new_Fs=Fs+interference;

sound(Fs,f)
pause

sound(new_Fs,f)
pause

plot(t,new_Fs)

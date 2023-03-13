function mywave = wave(samplefreq,time,fs)
%wave return the wave for the current frequency

t=0:1/samplefreq:time;

%Adding overtones
a=2*pi*fs*t;
tmpwv=0;
for i=1:6
tmpwv=tmpwv+sin(i*a).*exp(-0.0004*a)/(2^(i-1));
end

%make the sound more saturated
tmpwv=tmpwv+(tmpwv.*tmpwv.*tmpwv);
mywave=tmpwv/6;
end

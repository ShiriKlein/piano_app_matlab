function [mywave,fs] = basicWave(octave, notenum,samplefreq,time)
%basicWave return the note frequency and basic wave 
fs = frequency(octave, notenum);
mywave = wave(samplefreq,time,fs);
end


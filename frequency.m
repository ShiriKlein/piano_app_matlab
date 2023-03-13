function fs = frequency(octave, notenum)
%frequency the function return the frequency and key of the note

%calc the note key 
key = (octave*12)+notenum;
%calc the note frequency
fs = 440*(2^((key-49)/12));
end
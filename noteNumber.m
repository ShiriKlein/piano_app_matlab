function notenum= noteNumber(note,isSharp)
%noteNumber return the note number in an octave

%calc the number of the note (from 12 halth tones)
notenums=["A" "B" "C" "D" "E" "F" "G";1 3 4 6 8 9 11];
[row,col] = find(notenums==note);
notenum=isSharp+str2double(notenums(2,col(1)));
end

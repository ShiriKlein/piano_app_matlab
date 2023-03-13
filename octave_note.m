function [octave,notenum] = octave_note(str)
%octave_note return the octave and note number
[octave, note, isSharp] = split_on_num(str);
notenum = noteNumber(note,isSharp);
end


function [octave, note, isSharp] = split_on_num(str)
%split_on_num The function splits the string into three parts
%Returns a number for the octave, a string for the note, and a boolean whether the note is a diaz

    % Extract the note
    note = regexp(str, '[A-G][A-Za-z]*', 'match', 'once');
    % Extract the isSharp boolean value
    if contains(str, "#")
    isSharp=1;
    else
    isSharp=0; 
    end
    % Extract the octave
    octave = str2double(regexp(str, '[0-9]*', 'match', 'once'));

end

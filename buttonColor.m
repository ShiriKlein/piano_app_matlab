function color = buttonColor(notenum)
%buttonColor Returns the color to which the button should be changed 

%colors array
colors=["#0072BD" "#D95319" "#EDB120" "#7E2F8E" "#77AC30" "#4DBEEE" "#A2142F" "#FFFF00" "#00FFFF" "#FF00FF" "#00FF00" "#FF0000"];
%Calculate the position of the corresponding color
color=colors(notenum);
end
# Deletes comments and collapses whitespace in ##-packages files

:loop
# Buffer is "line1\nline2\n...lineN", del comments and collapse whitespace
s/#[^\n]*//g
s/[[:space:]]\{1,\}/ /g
# Append (N)ext line to buffer 
N
b loop

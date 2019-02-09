# Deletes comments and collapses whitespace in ##-packages files

# Append (N)ext line to buffer
# if (!)not ($)buffer is EOF, (b)ranch to (:)label loop
:loop
s/#[^\n]*//g
s/[[:space:]]\{1,\}/ /g
N
b loop

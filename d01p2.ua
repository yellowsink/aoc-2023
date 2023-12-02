&fras "input.txt"

⊜□≠, @\n # split by newlines

{"one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
+1⇡⧻.
# make a spare copy and a repeated twice ver
⊂..
# turn the first spare copy into chars and append to strs
⊙(⊐⊂:+@0)
⍉⊟: # pair 'em up :)

# mark indexes in original with numeric values
≡(|1 × ⊙(≡(□⊐⌕:):) /∘ ⊙.)
⊙; /+

# parse
# |        first & last
# |        |        throw away the zeroes
≡(parse+@0 [⊃⊢(⊢⇌)] ⊐▽>0.)
/+

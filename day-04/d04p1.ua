&fras "input.txt"

⊜□≠, @\n # split by newlines

≡(|1
  ⊔
  ↘+1⊢⊚⌕@:.          # remove Card:
  ⊜□≠, @|            # split by |
  ⊐≡(≡parse ⊜□≠, @ ) # parse
  ⧻⊚ ⊐⊠= /∘          # find & count matches
  ⌊ ⁿ:2 -1           # points = 2^(wins - 1), floor handles 0 case
)

/+

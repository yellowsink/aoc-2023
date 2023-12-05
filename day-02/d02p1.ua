&fras "input.txt"

RGB ← {"red" "green" "blue"}

⊜□≠, @\n # split by newlines
≡(
  # here, "Game x: yyy, zzz; aaa, bbb"
  ⊔

  ↘+1⊢⊚⌕@:. # cut off "Game x:"
  ⊜□≠, @;   # split by semicolon

  ≡(
    # here, "yyy, zzz"
    ⊐≡(↘1) ⊐⊜□≠, @, # split by comma
    #    ╭parse col  ╭parse amt ╭split by space
    ≡(≡⊔ ⍜⊢(⊗:RGB) ⇌ ⍜⊢(parse⊔) ⊐⊜□≠, @ )
    # here, [[col num] [col num]]

    /+ ≡(|1 ↻¯ ⊙(⬚0↯[3]) : /∘)
    # here, [r g b]

    # 0 = possible, >0 = impossible
    /+> 12_13_14
  )
  =0/+
)

# add indexes back, remove zeroes, sum
/+ ▽>0. × +1⇡⧻.

# &fras "input.txt"
$ Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53
$ Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19
$ Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1
$ Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83
$ Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36
$ Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11
# ;
⊜□≠, @\n # split by newlines
⍉⊟ +1⇡⧻. # add idx (later added to a ⇡)

⊐≡(|1
  /∘
  ↘+1⊢⊚⌕@:.          # remove Card:
  ⊜□≠, @|            # split by |
  ⊐≡(≡parse ⊜□≠, @ ) # parse
  /+ ≡(⧻⊚) ⍉ ⊐⊠= /∘  # find how many you win from this card
  ++1 ⇡              # get *which* cards you win from it
)

↯:0 ⊂[]⧻. # ≡(0;). keep track of how many of each card dealt with
+1.       # and how many to process yet

dump∘

# TODO: this is bad because it uses the shape of arrays to store stuff
# and that means potentially creating thousands-long arrays a lot
# its horrendously slow and wasteful.
⍢(
  ⊙+.                                  # add cards dealt with
  ⊃⧻(▽>0. ⊏⍏ . ⊐/⊂ ⊐≡(↯ : ⊙× :△.)) :⊙, # cards won (sorted) (& length)
  ⊂ +1⇡                                # add one per card (to remove holes in collecting)
  ⊐⊕∘ ⊛.                               # group by value
  ≡(-1 ⧻⊔)                             # how many of each card?
  # the amount of cards won is now left on the stack as our next to do

  dump∘
)(>0 ⧻⊚.)

⊙; /+ ; # count final cards

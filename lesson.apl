flashcard1 ← 'the | le/la'
flashcard2 ← 'a | un/une'
flashcards ← flashcard1 flashcard2
⍝ So the ← symbol is for assignment
⍝ and the , symbol is for concatenation of arrays


∇result ← A showFlashcard x
 result ← x , '\n'
∇

⍝ We need to find a solution to the problem that it does not deal with \n
⍝ as expected. I will have to look up how APL can print new lines.


lessonSummary ← ⊃ ,/ showFlashcard ¨ flashcards
⍝ We need the extra ⊃ (it gets the first element) to get it out of the "box".
⍝ I guess ,/ returned an array within an arrays
⍝ We need to do this so that our test passes.

⍝ If you know some Haskell, the following will make sense:
⍝ The ¨  is basically the map higher order function (but in infix notation).
⍝ Note The / here is basically the fold operator from Haskell.

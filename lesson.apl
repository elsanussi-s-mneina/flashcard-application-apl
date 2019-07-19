flashcard1 ← 'the' 'le/la'
flashcard2 ← 'a' 'un/une'

flashcards ← flashcard1 flashcard2
⍝ So the ← symbol is for assignment
⍝ and the , symbol is for concatenation of arrays

∇result ← A putOnSeparateLines xs
 ⍝⍝ xs is a list of strings
 result ← ⍪ xs
 ⍝ ⍪ This symbol is a way of changing the array from having n columns and
 ⍝ 1 row, to having 1 row and n columns.
∇

∇result ← A showFlashcard xs
 ⍝⍝ xs is a list of strings
 result ← (⊃ xs[1]) , ' | ', (⊃ xs[2])
 ⍝ The comma is basically concatenation of arrays or strings.
 ⍝ I'm not exactly sure why we need the ⊃ symbol.
 ⍝ I believe it has something to do with getting the
 ⍝ string out of its box.
∇


lessonSummary ← showFlashcard ¨ flashcards

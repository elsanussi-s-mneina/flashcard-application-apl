flashcard1 ← 'the' 'le/la'
flashcard2 ← 'a ' 'un/une'

flashcards ← flashcard1 flashcard2
⍝ So the ← symbol is for assignment
⍝ and the , symbol is for concatenation of arrays

∇result ← A putOnSeparateLines xs
 ⍝⍝ xs is a list of strings
 result ← (1 ⊃ ⍴ xs) 1 ⍴ xs
 ⍝ We are changing the dimensions of xs from
 ⍝  1 by n to n by 1
 ⍝  1 ⊃ gets the first element out of an array

 ⍝ This is my way of printing what is effectively a newline
 ⍝ character.
∇

∇result ← A showFlashcard xs
 ⍝⍝ xs is a list of strings
 result ← ⊃ ⍪/  xs[1] ⍪ ' | ' ⍪ xs[2]
 ⍝ We are changing the dimensions of xs from
 ⍝  1 by n to n by 1
 ⍝  1 ⊃ gets the first element out of an array

 ⍝ This is my way of printing what is effectively a newline
 ⍝ character.
∇


lessonSummary ← showFlashcard ¨ flashcards

flashcard1 ← 'the | le/la'
flashcard2 ← 'a | un/une'

⍝ So the ← symbol is for assignment
⍝ and the , symbol is for concatenation of arrays


∇Z←A showFlashcard F
 Z ← F , '\n'
∇

⍝ We need to find a solution to the problem that it does not deal with \n
⍝ as expected. I will have to look up how APL can print new lines.


lessonSummary ← (showFlashcard flashcard1) , (showFlashcard flashcard2)

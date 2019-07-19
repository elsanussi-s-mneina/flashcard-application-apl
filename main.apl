flashcard1 ← 'the' 'le/la'
flashcard2 ← 'a' 'un/une'

sampleFlashcards ← flashcard1 flashcard2
⍝ list of flashcards for running the program


'Welcome to Remember the Letter (APL)'
'Enter ''a'' to show both front and back of each card.'
'Enter ''f'' to show the front of each card.'
'Enter ''b'' to show the back of each card.'
''


inp ← ⍞ ⍝ input from user

⍝ If user input is 'a' print the fronts and backs of each flashcard
('' 'Printing Lesson summary:') [1 + (inp[1] ≡ 'a')]
('' (putOnSeparateLines lessonSummary sampleFlashcards)) [1 + (inp[1] ≡ 'a')]

⍝ If user input is 'f' print the fronts of each flashcard
('' 'Print only fronts of each card:') [1 + (inp[1] ≡ 'f')]
('' (putOnSeparateLines frontSummary sampleFlashcards)) [1 + (inp[1] ≡ 'f')]

⍝ If user input is 'b' print the backs of each flashcard
('' 'Print only backs of each card:') [1 + (inp[1] ≡ 'b')]
('' (putOnSeparateLines backSummary sampleFlashcards)) [1 + (inp[1] ≡ 'b')]

unrecogn ← 'Unrecognized input: (', inp, ')'
(unrecogn '')[1 + ∨/ inp[1] ≡ 'a']

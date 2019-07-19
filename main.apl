flashcard1 ← 'the' 'le/la'
flashcard2 ← 'a' 'un/une'

sampleFlashcards ← flashcard1 flashcard2
⍝ list of flashcards for running the program


'Welcome to Remember the Letter (APL)'
'Enter ''a'' to show both front and back of each card.'
'Enter ''f'' to show the front of each card.'
''


inp ← ⍞ ⍝ input from user

sorryNotImp ←  'Sorry, that feature is not implemented yet.'
(sorryNotImp 'Printing Lesson summary:') [1 + (inp[1] ≡ 'a')]
('' (putOnSeparateLines lessonSummary sampleFlashcards)) [1 + (inp[1] ≡ 'a')]
('' (putOnSeparateLines frontSummary sampleFlashcards)) [1 + (inp[1] ≡ 'f')]

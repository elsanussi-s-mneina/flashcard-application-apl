flashcard1 ← 'the' 'le/la'
flashcard2 ← 'a' 'un/une'

sampleFlashcards ← flashcard1 flashcard2
⍝ list of flashcards for running the program


'Welcome to Remember the Letter (APL)'

∇  commandLineLoop
  'Enter ''a'' to show both front and back of each card.'
  'Enter ''f'' to show the front of each card.'
  'Enter ''b'' to show the back of each card.'
  'Enter ''x'' to exit the application.'
  ''

  '>'
  inp ← ⍞ ⍝ input from user

  ⍝ If user input is 'a' print the fronts and backs of each flashcard
  ('' 'Printing Lesson summary:') [1 + (inp = 'a')]
  ('' (putOnSeparateLines lessonSummary sampleFlashcards)) [1 + (inp = 'a')]

  ⍝ If user input is 'f' print the fronts of each flashcard
  ('' 'Print only fronts of each card:') [1 + (inp = 'f')]
  ('' (putOnSeparateLines frontSummary sampleFlashcards)) [1 + (inp = 'f')]

  ⍝ If user input is 'b' print the backs of each flashcard
  ('' 'Print only backs of each card:') [1 + (inp = 'b')]
  ('' (putOnSeparateLines backSummary sampleFlashcards)) [1 + (inp = 'b')]


  unrecogn ← 'Unrecognized input: (' , inp , ')'
  (unrecogn ' ')[1 + ⊃ ∨/ (inp = 'a') (inp = 'f') (inp = 'b') (inp = 'x')]

  ('' 'Exiting program.') [1 + (inp = 'x')]
∇
commandLineLoop

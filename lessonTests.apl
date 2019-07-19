⍝ The  line ('Test 2: FAILURE' 'Test 2 passed.') [test2Result + 1] is equivalent to an
⍝ if-statement in other programming languages
⍝ It is an index into an array. Notice that indices start at 1.
⍝ But 0 is false. So we have to add 1. So that the first element in the
⍝ array represents the else case (what happens when the condition is false).

flashcard1 ← 'the' 'le/la'
flashcard2 ← 'a' 'un/une'

flashcards ← flashcard1 flashcard2


'Running Unit tests.'
test1Result ← 'the | le/la' ≡ ⊃ (lessonSummary flashcards)[1]
('Test 1: FAILURE' 'Test 1 passed.') [test1Result + 1]


test2Result ← 'a | un/une' ≡ ⊃ (lessonSummary flashcards)[2]
('Test 2: FAILURE' 'Test 2 passed.') [test2Result + 1]

showFlashcardTest1 ← 'a | A' ≡ showFlashcard 'a' 'A'
('showFlashcardTest1: FAILURE' 'showFlashcardTest1 passed.') [showFlashcardTest1 + 1]

showFlashcardTest2 ← 'b | B' ≡ showFlashcard 'b' 'B'
('showFlashcardTest2: FAILURE' 'showFlashcardTest2 passed.') [showFlashcardTest2 + 1]

showFlashcardTest3 ← 'c | C' ≡ showFlashcard 'c' 'C'
('showFlashcardTest3: FAILURE' 'showFlashcardTest3 passed.') [showFlashcardTest3 + 1]

showFlashcardTest4 ← 'Z | d' ≡ showFlashcard 'Z' 'd'
('showFlashcardTest4: FAILURE' 'showFlashcardTest4 passed.') [showFlashcardTest4 + 1]

showFlashcardTest5 ← 'AB | abc' ≡ showFlashcard 'AB' 'abc'
('showFlashcardTest5: FAILURE' 'showFlashcardTest5 passed.') [showFlashcardTest5 + 1]

⍝ The  line ('Test 2: FAILURE' 'Test 2 passed.') [test2Result + 1] is equivalent to an
⍝ if-statement in other programming languages
⍝ It is an index into an array. Notice that indices start at 1.
⍝ But 0 is false. So we have to add 1. So that the first element in the
⍝ array represents the else case (what happens when the condition is false).


'Running Unit tests.'
test1Result ← 'the | le/la' ≡ ⊃ lessonSummary[1]
('Test 1: FAILURE' 'Test 1 passed.') [test1Result + 1]


test2Result ← 'a | un/une' ≡ ⊃ lessonSummary[2]
('Test 2: FAILURE' 'Test 2 passed.') [test2Result + 1]

showFlashcardTest1 ← 'a | A' ≡ showFlashcard 'a' 'A'
('showFlashcardTest1: FAILURE' 'showFlashcardTest1 passed.') [showFlashcardTest1 + 1]

showFlashcardTest2 ← 'b | B' ≡ showFlashcard 'b' 'B'
('showFlashcardTest2: FAILURE' 'showFlashcardTest2 passed.') [showFlashcardTest2 + 1]

showFlashcardTest3 ← 'c | C' ≡ showFlashcard 'c' 'C'
('showFlashcardTest3: FAILURE' 'showFlashcardTest3 passed.') [showFlashcardTest3 + 1]

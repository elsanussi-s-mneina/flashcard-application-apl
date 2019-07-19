⍝ The  line ('Test 2: FAILURE' 'Test 2 passed.') [test2Result + 1]
⍝ is equivalent to an
⍝ if-statement in other programming languages
⍝ It is an index into an array. Notice that indices start at 1.
⍝ But 0 is false. So we have to add 1. So that the first element in the
⍝ array represents the else case (what happens when the condition is false).

flashcard1 ← 'the' 'le/la'
flashcard2 ← 'a' 'un/une'

flashcards ← flashcard1 flashcard2


'Running Unit tests.'

passedCount ← 0
allPassed ← 1
'Testing lessonSummary ...'
⍝ We use r for storing the result of a test.
r ← 'the | le/la' ≡ ⊃ (lessonSummary flashcards)[1]
passedCount ← passedCount + r
allPassed ← allPassed ∧ r
'Test 1'
('FAILURE' 'passed.') [r + 1]


r ← 'a | un/une' ≡ ⊃ (lessonSummary flashcards)[2]
passedCount ← passedCount + r
allPassed ← allPassed ∧ r
'Test 2'
('FAILURE' 'passed.') [r + 1]


'Testing showFlashcard ...'
r ← 'a | A' ≡ showFlashcard 'a' 'A'
passedCount ← passedCount + r
allPassed ← allPassed ∧ r
'Test 3'
('FAILURE' 'passed.') [r + 1]

r ← 'b | B' ≡ showFlashcard 'b' 'B'
passedCount ← passedCount + r
allPassed ← allPassed ∧ r
'Test 4'
('FAILURE' 'passed.') [r + 1]

r ← 'c | C' ≡ showFlashcard 'c' 'C'
passedCount ← passedCount + r
allPassed ← allPassed ∧ r
'Test 5'
('FAILURE' 'passed.') [r + 1]

r ← 'Z | d' ≡ showFlashcard 'Z' 'd'
passedCount ← passedCount + r
allPassed ← allPassed ∧ r
'Test 6: Z | d should be how to show a flashcard with Z on the front and d on back.'
('FAILURE' 'passed.') [r + 1]


r ← 'AB | abc' ≡ showFlashcard 'AB' 'abc'
passedCount ← passedCount + r
allPassed ← allPassed ∧ r
'Test 7: AB | abc should be how a flashcard with AB on front and abc on back'
('FAILURE' 'passed.') [r + 1]

'Count of tests that passed: '
passedCount
('At least one test failed!' 'All tests passed.') [allPassed + 1]

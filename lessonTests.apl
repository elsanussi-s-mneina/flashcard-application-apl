'Running Unit tests.'
test1Result ← 'the | le/la' ≡ ⊃ lessonSummary[1]
('Test 1: FAILURE' 'Test 1 passed.') [test1Result + 1]


test2Result ← 'a | un/une' ≡ ⊃ lessonSummary[2]
('Test 2: FAILURE' 'Test 2 passed.') [test2Result + 1]
⍝ The previous line is equivalent to an
⍝ if-statement in other programming languages
⍝ It is an index into an array. Notice that indices start at 1.
⍝ But 0 is false. So we have to add 1. So that the first element in the
⍝ array represents the else case (what happens when the condition is false).

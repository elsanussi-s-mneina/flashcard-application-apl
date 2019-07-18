test1Result ← (1 ⊃ lessonSummary) ≡ 'the | le/la'
⍝ test1Result is 1 if true, 0 if false.
⍝ The ≡ symbol compares for equality

test2Result ← (2 ⊃ lessonSummary) ≡ 'a | un/une'

countTests ← 2
sumTestResults ← +/ test1Result test2Result
sumTestResults
,/ 'If the preceding number is ' countTests ' the tests all passed'

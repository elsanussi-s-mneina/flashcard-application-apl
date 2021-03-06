⍝ Description : A lesson consists of flashcard data, and related functions.


⍝ So the ← symbol is for assignment
⍝ and the , symbol is for concatenation of arrays


⍝ A function taking an array of character vectors
⍝ and changing its orientation (so if it was horizontal it would be vertical)
⍝ I use this to put its contents on separate lines before printing.
putOnSeparateLines ← {⍪ ⍵}
 ⍝⍝ ⍵ is a list of strings (it is the right argument)
 ⍝ ⍪ This symbol is a way of changing the array from having n columns and
 ⍝ 1 row, to having 1 row and n columns.

 ⍝ A function taking an array containing at least two character vectors
 ⍝ and returning a chacter vector with a pipe inserted between them
 ⍝ This is used to be able to see both the back and front of a flashcard.
showFlashcard ← { (⊃ ⍵[1]) , ' | ', (⊃ ⍵[2]) }
 ⍝ The comma is basically concatenation of arrays or strings.
 ⍝ I'm not exactly sure why we need the ⊃ symbol.
 ⍝ I believe it has something to do with getting the
 ⍝ string out of its box.

⍝⍝ The front and backs of every flashcard in a given list.
lessonSummary ← { showFlashcard ¨ ⍵ }

⍝⍝ Show the front of a single flashcard.
showFront ← {⊃ ⍵[1]}

⍝⍝ Show the back of a single flashcard.
showBack ← {⊃ ⍵[2]}

⍝⍝ The front of every flashcard in a given list.
frontSummary ← {showFront ¨ ⍵}

⍝⍝ The back of every flashcard in a given list.
backSummary ← {showBack ¨ ⍵}

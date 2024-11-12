; Keywords
"for"
"in"

; Operators
[
 "+"
 "-"
 "*"
 "/"
 "="
] @operator

; Punctuation
[
 "("
 ")"
 "{"
 "}"
] @punctuation.bracket
";" @punctuation.delimiter

; Variables
(identifier) @variable

; Literals
(number) @number
(string) @string

; Comments
(comment) @comment

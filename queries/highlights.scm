; Keywords
"for" @keyword.contol
"let" @keyword.declaration
"const" @keyword.declaration

; Operators
[
 "+"
 "-"
 "*"
 "/"
 "="
 "in"
 "as"
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

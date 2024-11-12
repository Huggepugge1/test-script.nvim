; Keywords
(assignment_keyword) @keyword
(for_keyword) @keyword.loop

; Tests
(test) @function

; Variables
(identifier) @variable

; Literal
(number) @number
(string) @string
(regex) @string.regexp

; Operators
(addition) @operator
(subtraction) @operator
(multiplication) @operator
(division) @operator

(colon) @operator
(assignment_operator) @operator

(in_operator) @keyword.operator

; Punctuation
(semicolon) @punctuation.delimiter

(open_paren) @punctuation.bracket
(close_paren) @punctuation.bracket
(open_brace) @punctuation.brace
(close_brace) @punctuation.brace

; Types
(type) @type.builtin

; Comment
(comment) @comment

; Error
(ERROR) @error

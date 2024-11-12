; Keywords
(assignment_keyword) @keyword
(for_keyword) @keyword.loop

; Tests
(test_identifier) @function
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
(type_cast_operator) @keyword.operator

(colon) @operator
(assignment_operator) @operator

(in_operator) @keyword.operator

; Punctuation
(semicolon) @punctuation.delimiter

(open_paren) @punctuation.bracket
(close_paren) @punctuation.bracket
(open_brace) @punctuation.brace
(close_brace) @punctuation.brace

; Functions
(built_in_function) @function.builtin
(built_in_function_call) @function.builtin.call
(function) @function
(function_call) @function.call

; Types
(type) @type.builtin

; Comment
(comment) @comment

; Error
(ERROR) @error

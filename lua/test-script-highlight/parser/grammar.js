module.exports = grammar({
    name: 'test-script',

    rules: {
        source_file: $ => repeat($._test),

	_test: $ => seq(
		$.identifier,
		'(',
		$.string,
		')',
		$._statement
	),

        _statement: $ => seq($.expression, ';'),

        block: $ => seq(
            '{',
            repeat($._statement),
            '}'
        ),

        variable_declaration: $ => choice(
		seq(
		    'let',
		    ':',
		    field('type', $.type),
		    field('name', $.identifier),
		    '=',
		    field('value', $.expression)
		)
		seq(
		    'const',
		    ':',
		    field('type', $.type),
		    field('name', $.identifier),
		    '=',
		    field('value', $.expression)
		)
        ),

        expression: $ => choice(
            $.variable_declaration,
            $.identifier,
            $.number,
            $.string,
            $.binary_expression,
            $.call_expression
        ),

        binary_expression: $ => prec.left('binary', seq(
            field('left', $.expression),
            field('operator', choice('+', '-', '*', '/', "as")),
            field('right', $.expression)
        )),

        identifier: $ => /[a-zA-Z_][a-zA-Z0-9_]*/,
        type: $ => choice(
	    'int',
	    'string',
	),

        number: $ => /(?=<\w)\d+(\.\d+)?/,
        string: $ => choice(
            seq('"', repeat(/[^"]/), '"'),
        ),
        comment: $ => token(choice(
            seq('//', /.*/),
        ))
    }
});

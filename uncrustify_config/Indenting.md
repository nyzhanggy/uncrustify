


# Indenting

```ruby
# The number of columns to indent per level.
# Usually 2, 3, 4, or 8. Default=8.
indent_columns                  = 8        # unsigned number

# The continuation indent. If non-zero, this overrides the indent of '(' and '=' continuation indents.
# For FreeBSD, this is set to 4. Negative value is absolute and not increased for each '(' level.
indent_continue                 = 0        # number

# Indent empty lines - lines which contain only spaces before newline character
indent_single_newlines          = false    # false/true

# The continuation indent for func_*_param if they are true.
# If non-zero, this overrides the indent.
indent_param                    = 0        # unsigned number

# How to use tabs when indenting code
# 0=spaces only
# 1=indent with tabs to brace level, align with spaces (default)
# 2=indent and align with tabs, using spaces when not on a tabstop
indent_with_tabs                = 1        # unsigned number

# Comments that are not a brace level are indented with tabs on a tabstop.
# Requires indent_with_tabs=2. If false, will use spaces.
indent_cmt_with_tabs            = false    # false/true

# Whether to indent strings broken by '\' so that they line up.
indent_align_string             = false    # false/true

# The number of spaces to indent multi-line XML strings.
# Requires indent_align_string=True.
indent_xml_string               = 0        # unsigned number

# Spaces to indent '{' from level.
indent_brace                    = 0        # unsigned number

# Whether braces are indented to the body level.
indent_braces                   = false    # false/true

# Disabled indenting function braces if indent_braces is True.
indent_braces_no_func           = false    # false/true

# Disabled indenting class braces if indent_braces is True.
indent_braces_no_class          = false    # false/true

# Disabled indenting struct braces if indent_braces is True.
indent_braces_no_struct         = false    # false/true

# Indent based on the size of the brace parent, i.e. 'if' => 3 spaces, 'for' => 4 spaces, etc.
indent_brace_parent             = false    # false/true

# Indent based on the paren open instead of the brace open in '({\n', default is to indent by brace.
indent_paren_open_brace         = false    # false/true

# indent a C# delegate by another level, default is to not indent by another level.
indent_cs_delegate_brace        = false    # false/true

# indent a C# delegate(To hanndle delegates with no brace) by another level. default: false
indent_cs_delegate_body         = false    # false/true

# Whether the 'namespace' body is indented.
indent_namespace                = false    # false/true

# Only indent one namespace and no sub-namespaces.
# Requires indent_namespace=True.
indent_namespace_single_indent  = false    # false/true

# The number of spaces to indent a namespace block.
indent_namespace_level          = 0        # unsigned number

# If the body of the namespace is longer than this number, it won't be indented.
# Requires indent_namespace=True. Default=0 (no limit)
indent_namespace_limit          = 0        # unsigned number

# Whether the 'extern "C"' body is indented.
indent_extern                   = false    # false/true

# Whether the 'class' body is indented.
indent_class                    = false    # false/true

# Whether to indent the stuff after a leading base class colon.
indent_class_colon              = false    # false/true

# Indent based on a class colon instead of the stuff after the colon.
# Requires indent_class_colon=True. Default=False.
indent_class_on_colon           = false    # false/true

# Whether to indent the stuff after a leading class initializer colon.
indent_constr_colon             = false    # false/true

# Virtual indent from the ':' for member initializers. Default=2.
indent_ctor_init_leading        = 2        # unsigned number

# Additional indent for constructor initializer list.
# Negative values decrease indent down to the first column. Default=0.
indent_ctor_init                = 0        # number

# False=treat 'else\nif' as 'else if' for indenting purposes
# True=indent the 'if' one level.
indent_else_if                  = false    # false/true

# Amount to indent variable declarations after a open brace. neg=relative, pos=absolute.
indent_var_def_blk              = 0        # number

# Indent continued variable declarations instead of aligning.
indent_var_def_cont             = false    # false/true

# Indent continued shift expressions ('<<' and '>>') instead of aligning.
# Turn align_left_shift off when enabling this.
indent_shift                    = false    # false/true

# True:  force indentation of function definition to start in column 1
# False: use the default behavior.
indent_func_def_force_col1      = false    # false/true

# True:  indent continued function call parameters one indent level
# False: align parameters under the open paren.
indent_func_call_param          = false    # false/true

# Same as indent_func_call_param, but for function defs.
indent_func_def_param           = false    # false/true

# Same as indent_func_call_param, but for function protos.
indent_func_proto_param         = false    # false/true

# Same as indent_func_call_param, but for class declarations.
indent_func_class_param         = false    # false/true

# Same as indent_func_call_param, but for class variable constructors.
indent_func_ctor_var_param      = false    # false/true

# Same as indent_func_call_param, but for templates.
indent_template_param           = false    # false/true

# Double the indent for indent_func_xxx_param options.
# Use both values of the options indent_columns and indent_param.
indent_func_param_double        = false    # false/true

# Indentation column for standalone 'const' function decl/proto qualifier.
indent_func_const               = 0        # unsigned number

# Indentation column for standalone 'throw' function decl/proto qualifier.
indent_func_throw               = 0        # unsigned number

# The number of spaces to indent a continued '->' or '.'
# Usually set to 0, 1, or indent_columns.
indent_member                   = 0        # unsigned number

# setting to true will indent lines broken at '.' or '->' by a single indent
# UO_indent_member option will not be effective if this is set to true.
indent_member_single            = false    # false/true

# Spaces to indent single line ('//') comments on lines before code.
indent_sing_line_comments       = 0        # unsigned number

# If set, will indent trailing single line ('//') comments relative
# to the code instead of trying to keep the same absolute column.
indent_relative_single_line_comments = false    # false/true

# Spaces to indent 'case' from 'switch'
# Usually 0 or indent_columns.
indent_switch_case              = 0        # unsigned number

# Whether to indent preprocessor statements inside of switch statements.
indent_switch_pp                = true     # false/true

# Spaces to shift the 'case' line, without affecting any other lines
# Usually 0.
indent_case_shift               = 0        # unsigned number

# Spaces to indent '{' from 'case'.
# By default, the brace will appear under the 'c' in case.
# Usually set to 0 or indent_columns.
# negative value are OK.
indent_case_brace               = 0        # number

# Whether to indent comments found in first column.
indent_col1_comment             = false    # false/true

# How to indent goto labels
#   >0: absolute column where 1 is the leftmost column
#  <=0: subtract from brace indent
# Default=1
indent_label                    = 1        # number

# Same as indent_label, but for access specifiers that are followed by a colon. Default=1
indent_access_spec              = 1        # number

# Indent the code after an access specifier by one level.
# If set, this option forces 'indent_access_spec=0'.
indent_access_spec_body         = false    # false/true

# If an open paren is followed by a newline, indent the next line so that it lines up after the open paren (not recommended).
indent_paren_nl                 = false    # false/true

# Controls the indent of a close paren after a newline.
# 0: Indent to body level
# 1: Align under the open paren
# 2: Indent to the brace level
indent_paren_close              = 0        # unsigned number

# Controls the indent of the open paren of a function definition, if on it's own line.If True, indents the open paren
indent_paren_after_func_def     = false    # false/true

# Controls the indent of the open paren of a function declaration, if on it's own line.If True, indents the open paren
indent_paren_after_func_decl    = false    # false/true

# Controls the indent of the open paren of a function call, if on it's own line.If True, indents the open paren
indent_paren_after_func_call    = false    # false/true

# Controls the indent of a comma when inside a paren.If True, aligns under the open paren.
indent_comma_paren              = false    # false/true

# Controls the indent of a BOOL operator when inside a paren.If True, aligns under the open paren.
indent_bool_paren               = false    # false/true

# Controls the indent of a semicolon when inside a for paren.If True, aligns under the open for paren.
indent_semicolon_for_paren      = false    # false/true

# If 'indent_bool_paren' is True, controls the indent of the first expression. If True, aligns the first expression to the following ones.
indent_first_bool_expr          = false    # false/true

# If 'indent_semicolon_for_paren' is True, controls the indent of the first expression. If True, aligns the first expression to the following ones.
indent_first_for_expr           = false    # false/true

# If an open square is followed by a newline, indent the next line so that it lines up after the open square (not recommended).
indent_square_nl                = false    # false/true

# Don't change the relative indent of ESQL/C 'EXEC SQL' bodies.
indent_preserve_sql             = false    # false/true

# Align continued statements at the '='. Default=True
# If False or the '=' is followed by a newline, the next line is indent one tab.
indent_align_assign             = true     # false/true

# Align continued statements at the '('. Default=True
# If FALSE or the '(' is not followed by a newline, the next line indent is one tab.
indent_align_paren              = true     # false/true

# Indent OC blocks at brace level instead of usual rules.
indent_oc_block                 = false    # false/true

# Indent OC blocks in a message relative to the parameter name.
# 0=use indent_oc_block rules, 1+=spaces to indent
indent_oc_block_msg             = 0        # unsigned number

# Minimum indent for subsequent parameters
indent_oc_msg_colon             = 0        # unsigned number

# If True, prioritize aligning with initial colon (and stripping spaces from lines, if necessary).
# Default=True.
indent_oc_msg_prioritize_first_colon = true     # false/true

# If indent_oc_block_msg and this option are on, blocks will be indented the way that Xcode does by default (from keyword if the parameter is on its own line; otherwise, from the previous indentation level).
indent_oc_block_msg_xcode_style = false    # false/true

# If indent_oc_block_msg and this option are on, blocks will be indented from where the brace is relative to a msg keyword.
indent_oc_block_msg_from_keyword = false    # false/true

# If indent_oc_block_msg and this option are on, blocks will be indented from where the brace is relative to a msg colon.
indent_oc_block_msg_from_colon  = false    # false/true

# If indent_oc_block_msg and this option are on, blocks will be indented from where the block caret is.
indent_oc_block_msg_from_caret  = false    # false/true

# If indent_oc_block_msg and this option are on, blocks will be indented from where the brace is.
indent_oc_block_msg_from_brace  = false    # false/true

# When indenting after virtual brace open and newline add further spaces to reach this min. indent.
indent_min_vbrace_open          = 0        # unsigned number

# True: When identing after virtual brace open and newline add further spaces after regular indent to reach next tabstop.
indent_vbrace_open_on_tabstop   = false    # false/true

# If True, a brace followed by another token (not a newline) will indent all contained lines to match the token.Default=True.
indent_token_after_brace        = true     # false/true

# If True, cpp lambda body will be indentedDefault=False.
indent_cpp_lambda_body          = false    # false/true

# indent (or not) an using block if no braces are used. Only for C#.Default=True.
indent_using_block              = true     # false/true

# indent the continuation of ternary operator.
# 0: (Default) off
# 1: When the `if_false` is a continuation, indent it under `if_false`
# 2: When the `:` is a continuation, indent it under `?`
indent_ternary_operator         = 0        # unsigned number

# If true, the indentation of the chunks after a `return new` sequence will be set at return indentation column.
indent_off_after_return_new     = false    # false/true

# If true, the tokens after return are indented with regular single indentation.By default (false) the indentation is after the return token.
indent_single_after_return      = false    # false/true

# If true, ignore indent and align for asm blocks as they have their own indentation.
indent_ignore_asm_block         = false    # false/true
```
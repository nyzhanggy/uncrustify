
# Newline adding and removing options

```ruby
# Whether to collapse empty blocks between '{' and '}'.
nl_collapse_empty_body          = false    # false/true

# Don't split one-line braced assignments - 'foo_t f = { 1, 2 };'.
nl_assign_leave_one_liners      = false    # false/true

# Don't split one-line braced statements inside a class xx { } body.
nl_class_leave_one_liners       = false    # false/true

# Don't split one-line enums: 'enum foo { BAR = 15 };'
nl_enum_leave_one_liners        = false    # false/true

# Don't split one-line get or set functions.
nl_getset_leave_one_liners      = false    # false/true

# Don't split one-line get or set functions.
nl_cs_property_leave_one_liners = false    # false/true

# Don't split one-line function definitions - 'int foo() { return 0; }'.
nl_func_leave_one_liners        = false    # false/true

# Don't split one-line C++11 lambdas - '[]() { return 0; }'.
nl_cpp_lambda_leave_one_liners  = false    # false/true

# Don't split one-line if/else statements - 'if(a) b++;'.
nl_if_leave_one_liners          = false    # false/true

# Don't split one-line while statements - 'while(a) b++;'.
nl_while_leave_one_liners       = false    # false/true

# Don't split one-line OC messages.
nl_oc_msg_leave_one_liner       = false    # false/true

# Add or remove newline between Objective-C block signature and '{'.
nl_oc_block_brace               = ignore   # ignore/add/remove/force

# Add or remove newline between @interface and '{'.
nl_oc_interface_brace           = ignore   # ignore/add/remove/force

# Add or remove newline between @implementation and '{'.
nl_oc_implementation_brace      = ignore   # ignore/add/remove/force

# Add or remove newlines at the start of the file.
nl_start_of_file                = ignore   # ignore/add/remove/force

# The number of newlines at the start of the file (only used if nl_start_of_file is 'add' or 'force'.
nl_start_of_file_min            = 0        # unsigned number

# Add or remove newline at the end of the file.
nl_end_of_file                  = ignore   # ignore/add/remove/force

# The number of newlines at the end of the file (only used if nl_end_of_file is 'add' or 'force').
nl_end_of_file_min              = 0        # unsigned number

# Add or remove newline between '=' and '{'.
nl_assign_brace                 = ignore   # ignore/add/remove/force

# Add or remove newline between '=' and '[' (D only).
nl_assign_square                = ignore   # ignore/add/remove/force

# Add or remove newline between '[]' and '{'.
nl_tsquare_brace                = ignore   # ignore/add/remove/force

# Add or remove newline after '= [' (D only). Will also affect the newline before the ']'.
nl_after_square_assign          = ignore   # ignore/add/remove/force

# The number of blank lines after a block of variable definitions at the top of a function body
# 0 = No change (default).
nl_func_var_def_blk             = 0        # unsigned number

# The number of newlines before a block of typedefs
# 0 = No change (default)
# is overridden by the option 'nl_after_access_spec'.
nl_typedef_blk_start            = 0        # unsigned number

# The number of newlines after a block of typedefs
# 0 = No change (default).
nl_typedef_blk_end              = 0        # unsigned number

# The maximum consecutive newlines within a block of typedefs
# 0 = No change (default).
nl_typedef_blk_in               = 0        # unsigned number

# The number of newlines before a block of variable definitions not at the top of a function body
# 0 = No change (default)
# is overridden by the option 'nl_after_access_spec'.
nl_var_def_blk_start            = 0        # unsigned number

# The number of newlines after a block of variable definitions not at the top of a function body
# 0 = No change (default).
nl_var_def_blk_end              = 0        # unsigned number

# The maximum consecutive newlines within a block of variable definitions
# 0 = No change (default).
nl_var_def_blk_in               = 0        # unsigned number

# Add or remove newline between a function call's ')' and '{', as in:
# list_for_each(item, &list) { }.
nl_fcall_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline between 'enum' and '{'.
nl_enum_brace                   = ignore   # ignore/add/remove/force

# Add or remove newline between 'enum' and 'class'.
nl_enum_class                   = ignore   # ignore/add/remove/force

# Add or remove newline between 'enum class' and the identifier.
nl_enum_class_identifier        = ignore   # ignore/add/remove/force

# Add or remove newline between 'enum class' type and ':'.
nl_enum_identifier_colon        = ignore   # ignore/add/remove/force

# Add or remove newline between 'enum class identifier :' and 'type' and/or 'type'.
nl_enum_colon_type              = ignore   # ignore/add/remove/force

# Add or remove newline between 'struct and '{'.
nl_struct_brace                 = ignore   # ignore/add/remove/force

# Add or remove newline between 'union' and '{'.
nl_union_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline between 'if' and '{'.
nl_if_brace                     = ignore   # ignore/add/remove/force

# Add or remove newline between '}' and 'else'.
nl_brace_else                   = ignore   # ignore/add/remove/force

# Add or remove newline between 'else if' and '{'
# If set to ignore, nl_if_brace is used instead.
nl_elseif_brace                 = ignore   # ignore/add/remove/force

# Add or remove newline between 'else' and '{'.
nl_else_brace                   = ignore   # ignore/add/remove/force

# Add or remove newline between 'else' and 'if'.
nl_else_if                      = ignore   # ignore/add/remove/force

# Add or remove newline before 'if'/'else if' closing parenthesis.
nl_before_if_closing_paren      = ignore   # ignore/add/remove/force

# Add or remove newline between '}' and 'finally'.
nl_brace_finally                = ignore   # ignore/add/remove/force

# Add or remove newline between 'finally' and '{'.
nl_finally_brace                = ignore   # ignore/add/remove/force

# Add or remove newline between 'try' and '{'.
nl_try_brace                    = ignore   # ignore/add/remove/force

# Add or remove newline between get/set and '{'.
nl_getset_brace                 = ignore   # ignore/add/remove/force

# Add or remove newline between 'for' and '{'.
nl_for_brace                    = ignore   # ignore/add/remove/force

# Add or remove newline between 'catch' and '{'.
nl_catch_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline between '@catch' and '{'.
# If set to ignore, nl_catch_brace is used.
nl_oc_catch_brace               = ignore   # ignore/add/remove/force

# Add or remove newline between '}' and 'catch'.
nl_brace_catch                  = ignore   # ignore/add/remove/force

# Add or remove newline between '}' and 'catch'.
# If set to ignore, nl_brace_catch is used.
nl_oc_brace_catch               = ignore   # ignore/add/remove/force

# Add or remove newline between '}' and ']'.
nl_brace_square                 = ignore   # ignore/add/remove/force

# Add or remove newline between '}' and ')' in a function invocation.
nl_brace_fparen                 = ignore   # ignore/add/remove/force

# Add or remove newline between 'while' and '{'.
nl_while_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline between 'scope (x)' and '{' (D).
nl_scope_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline between 'unittest' and '{' (D).
nl_unittest_brace               = ignore   # ignore/add/remove/force

# Add or remove newline between 'version (x)' and '{' (D).
nl_version_brace                = ignore   # ignore/add/remove/force

# Add or remove newline between 'using' and '{'.
nl_using_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline between two open or close braces.
# Due to general newline/brace handling, REMOVE may not work.
nl_brace_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline between 'do' and '{'.
nl_do_brace                     = ignore   # ignore/add/remove/force

# Add or remove newline between '}' and 'while' of 'do' statement.
nl_brace_while                  = ignore   # ignore/add/remove/force

# Add or remove newline between 'switch' and '{'.
nl_switch_brace                 = ignore   # ignore/add/remove/force

# Add or remove newline between 'synchronized' and '{'.
nl_synchronized_brace           = ignore   # ignore/add/remove/force

# Add a newline between ')' and '{' if the ')' is on a different line than the if/for/etc.
# Overrides nl_for_brace, nl_if_brace, nl_switch_brace, nl_while_switch and nl_catch_brace.
nl_multi_line_cond              = false    # false/true

# Force a newline in a define after the macro name for multi-line defines.
nl_multi_line_define            = false    # false/true

# Whether to put a newline before 'case' statement, not after the first 'case'.
nl_before_case                  = false    # false/true

# Add or remove newline between ')' and 'throw'.
nl_before_throw                 = ignore   # ignore/add/remove/force

# Whether to put a newline after 'case' statement.
nl_after_case                   = false    # false/true

# Add or remove a newline between a case ':' and '{'. Overrides nl_after_case.
nl_case_colon_brace             = ignore   # ignore/add/remove/force

# Newline between namespace and {.
nl_namespace_brace              = ignore   # ignore/add/remove/force

# Add or remove newline between 'template<>' and whatever follows.
nl_template_class               = ignore   # ignore/add/remove/force

# Add or remove newline between 'class' and '{'.
nl_class_brace                  = ignore   # ignore/add/remove/force

# Add or remove newline before/after each ',' in the base class list,
#   (tied to pos_class_comma).
nl_class_init_args              = ignore   # ignore/add/remove/force

# Add or remove newline after each ',' in the constructor member initialization.
# Related to nl_constr_colon, pos_constr_colon and pos_constr_comma.
nl_constr_init_args             = ignore   # ignore/add/remove/force

# Add or remove newline before first element, after comma, and after last element in enum.
nl_enum_own_lines               = ignore   # ignore/add/remove/force

# Add or remove newline between return type and function name in a function definition.
nl_func_type_name               = ignore   # ignore/add/remove/force

# Add or remove newline between return type and function name inside a class {}
# Uses nl_func_type_name or nl_func_proto_type_name if set to ignore.
nl_func_type_name_class         = ignore   # ignore/add/remove/force

# Add or remove newline between class specification and '::' in 'void A::f() { }'
# Only appears in separate member implementation (does not appear with in-line implmementation).
nl_func_class_scope             = ignore   # ignore/add/remove/force

# Add or remove newline between function scope and name
# Controls the newline after '::' in 'void A::f() { }'.
nl_func_scope_name              = ignore   # ignore/add/remove/force

# Add or remove newline between return type and function name in a prototype.
nl_func_proto_type_name         = ignore   # ignore/add/remove/force

# Add or remove newline between a function name and the opening '(' in the declaration.
nl_func_paren                   = ignore   # ignore/add/remove/force

# Overrides nl_func_paren for functions with no parameters.
nl_func_paren_empty             = ignore   # ignore/add/remove/force

# Add or remove newline between a function name and the opening '(' in the definition.
nl_func_def_paren               = ignore   # ignore/add/remove/force

# Overrides nl_func_def_paren for functions with no parameters.
nl_func_def_paren_empty         = ignore   # ignore/add/remove/force

# Add or remove newline between a function name and the opening '(' in the call
nl_func_call_paren              = ignore   # ignore/add/remove/force

# Overrides nl_func_call_paren for functions with no parameters.
nl_func_call_paren_empty        = ignore   # ignore/add/remove/force

# Add or remove newline after '(' in a function declaration.
nl_func_decl_start              = ignore   # ignore/add/remove/force

# Add or remove newline after '(' in a function definition.
nl_func_def_start               = ignore   # ignore/add/remove/force

# Overrides nl_func_decl_start when there is only one parameter.
nl_func_decl_start_single       = ignore   # ignore/add/remove/force

# Overrides nl_func_def_start when there is only one parameter.
nl_func_def_start_single        = ignore   # ignore/add/remove/force

# Whether to add newline after '(' in a function declaration if '(' and ')' are in different lines.
nl_func_decl_start_multi_line   = false    # false/true

# Whether to add newline after '(' in a function definition if '(' and ')' are in different lines.
nl_func_def_start_multi_line    = false    # false/true

# Add or remove newline after each ',' in a function declaration.
nl_func_decl_args               = ignore   # ignore/add/remove/force

# Add or remove newline after each ',' in a function definition.
nl_func_def_args                = ignore   # ignore/add/remove/force

# Whether to add newline after each ',' in a function declaration if '(' and ')' are in different lines.
nl_func_decl_args_multi_line    = false    # false/true

# Whether to add newline after each ',' in a function definition if '(' and ')' are in different lines.
nl_func_def_args_multi_line     = false    # false/true

# Add or remove newline before the ')' in a function declaration.
nl_func_decl_end                = ignore   # ignore/add/remove/force

# Add or remove newline before the ')' in a function definition.
nl_func_def_end                 = ignore   # ignore/add/remove/force

# Overrides nl_func_decl_end when there is only one parameter.
nl_func_decl_end_single         = ignore   # ignore/add/remove/force

# Overrides nl_func_def_end when there is only one parameter.
nl_func_def_end_single          = ignore   # ignore/add/remove/force

# Whether to add newline before ')' in a function declaration if '(' and ')' are in different lines.
nl_func_decl_end_multi_line     = false    # false/true

# Whether to add newline before ')' in a function definition if '(' and ')' are in different lines.
nl_func_def_end_multi_line      = false    # false/true

# Add or remove newline between '()' in a function declaration.
nl_func_decl_empty              = ignore   # ignore/add/remove/force

# Add or remove newline between '()' in a function definition.
nl_func_def_empty               = ignore   # ignore/add/remove/force

# Add or remove newline between '()' in a function call.
nl_func_call_empty              = ignore   # ignore/add/remove/force

# Whether to add newline after '(' in a function call if '(' and ')' are in different lines.
nl_func_call_start_multi_line   = false    # false/true

# Whether to add newline after each ',' in a function call if '(' and ')' are in different lines.
nl_func_call_args_multi_line    = false    # false/true

# Whether to add newline before ')' in a function call if '(' and ')' are in different lines.
nl_func_call_end_multi_line     = false    # false/true

# Whether to put each OC message parameter on a separate line
# See nl_oc_msg_leave_one_liner.
nl_oc_msg_args                  = false    # false/true

# Add or remove newline between function signature and '{'.
nl_fdef_brace                   = ignore   # ignore/add/remove/force

# Add or remove newline between C++11 lambda signature and '{'.
nl_cpp_ldef_brace               = ignore   # ignore/add/remove/force

# Add or remove a newline between the return keyword and return expression.
nl_return_expr                  = ignore   # ignore/add/remove/force

# Whether to put a newline after semicolons, except in 'for' statements.
nl_after_semicolon              = false    # false/true

# Java: Control the newline between the ')' and '{{' of the double brace initializer.
nl_paren_dbrace_open            = ignore   # ignore/add/remove/force

# Whether to put a newline after the type in an unnamed temporary direct-list-initialization.
nl_type_brace_init_lst          = ignore   # ignore/add/remove/force

# Whether to put a newline after open brace in an unnamed temporary direct-list-initialization.
nl_type_brace_init_lst_open     = ignore   # ignore/add/remove/force

# Whether to put a newline before close brace in an unnamed temporary direct-list-initialization.
nl_type_brace_init_lst_close    = ignore   # ignore/add/remove/force

# Whether to put a newline after brace open.
# This also adds a newline before the matching brace close.
nl_after_brace_open             = false    # false/true

# If nl_after_brace_open and nl_after_brace_open_cmt are True, a newline is
# placed between the open brace and a trailing single-line comment.
nl_after_brace_open_cmt         = false    # false/true

# Whether to put a newline after a virtual brace open with a non-empty body.
# These occur in un-braced if/while/do/for statement bodies.
nl_after_vbrace_open            = false    # false/true

# Whether to put a newline after a virtual brace open with an empty body.
# These occur in un-braced if/while/do/for statement bodies.
nl_after_vbrace_open_empty      = false    # false/true

# Whether to put a newline after a brace close.
# Does not apply if followed by a necessary ';'.
nl_after_brace_close            = false    # false/true

# Whether to put a newline after a virtual brace close.
# Would add a newline before return in: 'if (foo) a++; return;'.
nl_after_vbrace_close           = false    # false/true

# Control the newline between the close brace and 'b' in: 'struct { int a; } b;'
# Affects enums, unions and structures. If set to ignore, uses nl_after_brace_close.
nl_brace_struct_var             = ignore   # ignore/add/remove/force

# Whether to alter newlines in '#define' macros.
nl_define_macro                 = false    # false/true

# Whether to alter newlines between consecutive paren closes, 
# The number of closing paren in a line will depend on respective open paren lines
nl_squeeze_paren_close          = false    # false/true

# Whether to remove blanks after '#ifxx' and '#elxx', or before '#elxx' and '#endif'. Does not affect top-level #ifdefs.
nl_squeeze_ifdef                = false    # false/true

# Makes the nl_squeeze_ifdef option affect the top-level #ifdefs as well.
nl_squeeze_ifdef_top_level      = false    # false/true

# Add or remove blank line before 'if'.
nl_before_if                    = ignore   # ignore/add/remove/force

# Add or remove blank line after 'if' statement.
# Add/Force work only if the next token is not a closing brace.
nl_after_if                     = ignore   # ignore/add/remove/force

# Add or remove blank line before 'for'.
nl_before_for                   = ignore   # ignore/add/remove/force

# Add or remove blank line after 'for' statement.
nl_after_for                    = ignore   # ignore/add/remove/force

# Add or remove blank line before 'while'.
nl_before_while                 = ignore   # ignore/add/remove/force

# Add or remove blank line after 'while' statement.
nl_after_while                  = ignore   # ignore/add/remove/force

# Add or remove blank line before 'switch'.
nl_before_switch                = ignore   # ignore/add/remove/force

# Add or remove blank line after 'switch' statement.
nl_after_switch                 = ignore   # ignore/add/remove/force

# Add or remove blank line before 'synchronized'.
nl_before_synchronized          = ignore   # ignore/add/remove/force

# Add or remove blank line after 'synchronized' statement.
nl_after_synchronized           = ignore   # ignore/add/remove/force

# Add or remove blank line before 'do'.
nl_before_do                    = ignore   # ignore/add/remove/force

# Add or remove blank line after 'do/while' statement.
nl_after_do                     = ignore   # ignore/add/remove/force

# Whether to double-space commented-entries in struct/union/enum.
nl_ds_struct_enum_cmt           = false    # false/true

# force nl before } of a struct/union/enum
# (lower priority than 'eat_blanks_before_close_brace').
nl_ds_struct_enum_close_brace   = false    # false/true

# Add or remove blank line before 'func_class_def'.
nl_before_func_class_def        = 0        # unsigned number

# Add or remove blank line before 'func_class_proto'.
nl_before_func_class_proto      = 0        # unsigned number

# Add or remove a newline before/after a class colon,
#   (tied to pos_class_colon).
nl_class_colon                  = ignore   # ignore/add/remove/force

# Add or remove a newline around a class constructor colon.
# Related to nl_constr_init_args, pos_constr_colon and pos_constr_comma.
nl_constr_colon                 = ignore   # ignore/add/remove/force

# If true turns two liner namespace to one liner,else will make then four liners
nl_namespace_two_to_one_liner   = false    # false/true

# Change simple unbraced if statements into a one-liner
# 'if(b)\n i++;' => 'if(b) i++;'.
nl_create_if_one_liner          = false    # false/true

# Change simple unbraced for statements into a one-liner
# 'for (i=0;i<5;i++)\n foo(i);' => 'for (i=0;i<5;i++) foo(i);'.
nl_create_for_one_liner         = false    # false/true

# Change simple unbraced while statements into a one-liner
# 'while (i<5)\n foo(i++);' => 'while (i<5) foo(i++);'.
nl_create_while_one_liner       = false    # false/true

# Change simple 4,3,2 liner function def statements into a one-liner
nl_create_func_def_one_liner    = false    # false/true

#  Change a one-liner if statement into simple unbraced if
# 'if(b) i++;' => 'if(b)\n i++;'.
nl_split_if_one_liner           = false    # false/true

# Change a one-liner for statement into simple unbraced for
# 'for (i=0;<5;i++) foo(i);' => 'for (i=0;<5;i++)\n foo(i);'.
nl_split_for_one_liner          = false    # false/true

# Change a one-liner while statement into simple unbraced while
# 'while (i<5) foo(i++);' => 'while (i<5)\n foo(i++);'.
nl_split_while_one_liner        = false    # false/true
```
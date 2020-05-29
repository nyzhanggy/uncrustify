

# Code alignment (not left column spaces/tabs)

```ruby

# Whether to keep non-indenting tabs.
align_keep_tabs                 = false    # false/true

# Whether to use tabs for aligning.
align_with_tabs                 = false    # false/true

# Whether to bump out to the next tab when aligning.
align_on_tabstop                = false    # false/true

# Whether to right-align numbers.
align_number_right              = false    # false/true

# Whether to keep whitespace not required for alignment.
align_keep_extra_space          = false    # false/true

# Align variable definitions in prototypes and functions.
align_func_params               = false    # false/true

# The span for aligning parameter definitions in function on parameter name (0=don't align).
align_func_params_span          = 0        # unsigned number

# The threshold for aligning function parameter definitions (0=no limit).
align_func_params_thresh        = 0        # unsigned number

# The gap for aligning function parameter definitions.
align_func_params_gap           = 0        # unsigned number

# Align parameters in single-line functions that have the same name.
# The function names must already be aligned with each other.
align_same_func_call_params     = false    # false/true

# The span for aligning variable definitions (0=don't align)
align_var_def_span              = 0        # unsigned number

# How to align the star in variable definitions.
#  0=Part of the type     'void *   foo;'
#  1=Part of the variable 'void     *foo;'
#  2=Dangling             'void    *foo;'
align_var_def_star_style        = 0        # unsigned number

# How to align the '&' in variable definitions.
#  0=Part of the type
#  1=Part of the variable
#  2=Dangling
align_var_def_amp_style         = 0        # unsigned number

# The threshold for aligning variable definitions (0=no limit)
align_var_def_thresh            = 0        # unsigned number

# The gap for aligning variable definitions.
align_var_def_gap               = 0        # unsigned number

# Whether to align the colon in struct bit fields.
align_var_def_colon             = false    # false/true

# align variable defs gap for bit colons.
align_var_def_colon_gap         = 0        # unsigned number

# Whether to align any attribute after the variable name.
align_var_def_attribute         = false    # false/true

# Whether to align inline struct/enum/union variable definitions.
align_var_def_inline            = false    # false/true

# The span for aligning on '=' in assignments (0=don't align)
align_assign_span               = 0        # unsigned number

# The threshold for aligning on '=' in assignments (0=no limit)
align_assign_thresh             = 0        # unsigned number

# The span for aligning on '=' in enums (0=don't align)
align_enum_equ_span             = 0        # unsigned number

# The threshold for aligning on '=' in enums (0=no limit)
align_enum_equ_thresh           = 0        # unsigned number

# The span for aligning class (0=don't align)
align_var_class_span            = 0        # unsigned number

# The threshold for aligning class member definitions (0=no limit).
align_var_class_thresh          = 0        # unsigned number

# The gap for aligning class member definitions.
align_var_class_gap             = 0        # unsigned number

# The span for aligning struct/union (0=don't align)
align_var_struct_span           = 0        # unsigned number

# The threshold for aligning struct/union member definitions (0=no limit)
align_var_struct_thresh         = 0        # unsigned number

# The gap for aligning struct/union member definitions.
align_var_struct_gap            = 0        # unsigned number

# The span for aligning struct initializer values (0=don't align)
align_struct_init_span          = 0        # unsigned number

# The minimum space between the type and the synonym of a typedef.
align_typedef_gap               = 0        # unsigned number

# The span for aligning single-line typedefs (0=don't align).
align_typedef_span              = 0        # unsigned number

# How to align typedef'd functions with other typedefs
# 0: Don't mix them at all
# 1: align the open paren with the types
# 2: align the function type name with the other type names
align_typedef_func              = 0        # unsigned number

# Controls the positioning of the '*' in typedefs. Just try it.
# 0: Align on typedef type, ignore '*'
# 1: The '*' is part of type name: typedef int  *pint;
# 2: The '*' is part of the type, but dangling: typedef int *pint;
align_typedef_star_style        = 0        # unsigned number

# Controls the positioning of the '&' in typedefs. Just try it.
# 0: Align on typedef type, ignore '&'
# 1: The '&' is part of type name: typedef int  &pint;
# 2: The '&' is part of the type, but dangling: typedef int &pint;
align_typedef_amp_style         = 0        # unsigned number

# The span for aligning comments that end lines (0=don't align)
align_right_cmt_span            = 0        # unsigned number

# If aligning comments, mix with comments after '}' and #endif with less than 3 spaces before the comment.
align_right_cmt_mix             = false    # false/true

# If a trailing comment is more than this number of columns away from the text it follows,
# it will qualify for being aligned. This has to be > 0 to do anything.
align_right_cmt_gap             = 0        # unsigned number

# Align trailing comment at or beyond column N; 'pulls in' comments as a bonus side effect (0=ignore)
align_right_cmt_at_col          = 0        # unsigned number

# The span for aligning function prototypes (0=don't align).
align_func_proto_span           = 0        # unsigned number

# Minimum gap between the return type and the function name.
align_func_proto_gap            = 0        # unsigned number

# Align function protos on the 'operator' keyword instead of what follows.
align_on_operator               = false    # false/true

# Whether to mix aligning prototype and variable declarations.
# If True, align_var_def_XXX options are used instead of align_func_proto_XXX options.
align_mix_var_proto             = false    # false/true

# Align single-line functions with function prototypes, uses align_func_proto_span.
align_single_line_func          = false    # false/true

# Aligning the open brace of single-line functions.
# Requires align_single_line_func=True, uses align_func_proto_span.
align_single_line_brace         = false    # false/true

# Gap for align_single_line_brace.
align_single_line_brace_gap     = 0        # unsigned number

# The span for aligning ObjC msg spec (0=don't align)
align_oc_msg_spec_span          = 0        # unsigned number

# Whether to align macros wrapped with a backslash and a newline.
# This will not work right if the macro contains a multi-line comment.
align_nl_cont                   = false    # false/true

# # Align macro functions and variables together.
align_pp_define_together        = false    # false/true

# The minimum space between label and value of a preprocessor define.
align_pp_define_gap             = 0        # unsigned number

# The span for aligning on '#define' bodies (0=don't align, other=number of lines including comments between blocks)
align_pp_define_span            = 0        # unsigned number

# Align lines that start with '<<' with previous '<<'. Default=True.
align_left_shift                = true     # false/true

# Align text after asm volatile () colons.
align_asm_colon                 = false    # false/true

# Span for aligning parameters in an Obj-C message call on the ':' (0=don't align)
align_oc_msg_colon_span         = 0        # unsigned number

# If True, always align with the first parameter, even if it is too short.
align_oc_msg_colon_first        = false    # false/true

# Aligning parameters in an Obj-C '+' or '-' declaration on the ':'.
align_oc_decl_colon             = false    # false/true
```
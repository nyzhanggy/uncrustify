
# Blank line options

```ruby
# The maximum consecutive newlines (3 = 2 blank lines).
nl_max                          = 0        # unsigned number

# The maximum consecutive newlines in function.
nl_max_blank_in_func            = 0        # unsigned number

# The number of newlines after a function prototype, if followed by another function prototype.
nl_after_func_proto             = 0        # unsigned number

# The number of newlines after a function prototype, if not followed by another function prototype.
nl_after_func_proto_group       = 0        # unsigned number

# The number of newlines after a function class prototype, if followed by another function class prototype.
nl_after_func_class_proto       = 0        # unsigned number

# The number of newlines after a function class prototype, if not followed by another function class prototype.
nl_after_func_class_proto_group = 0        # unsigned number

# The number of newlines before a multi-line function def body.
nl_before_func_body_def         = 0        # unsigned number

# The number of newlines before a multi-line function prototype body.
nl_before_func_body_proto       = 0        # unsigned number

# The number of newlines after '}' of a multi-line function body.
nl_after_func_body              = 0        # unsigned number

# The number of newlines after '}' of a multi-line function body in a class declaration.
nl_after_func_body_class        = 0        # unsigned number

# The number of newlines after '}' of a single line function body.
nl_after_func_body_one_liner    = 0        # unsigned number

# The minimum number of newlines before a multi-line comment.
# Doesn't apply if after a brace open or another multi-line comment.
nl_before_block_comment         = 0        # unsigned number

# The minimum number of newlines before a single-line C comment.
# Doesn't apply if after a brace open or other single-line C comments.
nl_before_c_comment             = 0        # unsigned number

# The minimum number of newlines before a CPP comment.
# Doesn't apply if after a brace open or other CPP comments.
nl_before_cpp_comment           = 0        # unsigned number

# Whether to force a newline after a multi-line comment.
nl_after_multiline_comment      = false    # false/true

# Whether to force a newline after a label's colon.
nl_after_label_colon            = false    # false/true

# The number of newlines after '}' or ';' of a struct/enum/union definition.
nl_after_struct                 = 0        # unsigned number

# The number of newlines before a class definition.
nl_before_class                 = 0        # unsigned number

# The number of newlines after '}' or ';' of a class definition.
nl_after_class                  = 0        # unsigned number

# The number of newlines before a 'private:', 'public:', 'protected:', 'signals:', or 'slots:' label.
# Will not change the newline count if after a brace open.
# 0 = No change.
nl_before_access_spec           = 0        # unsigned number

# The number of newlines after a 'private:', 'public:', 'protected:', 'signals:' or 'slots:' label.
# 0 = No change.
# Overrides 'nl_typedef_blk_start' and 'nl_var_def_blk_start'.
nl_after_access_spec            = 0        # unsigned number

# The number of newlines between a function def and the function comment.
# 0 = No change.
nl_comment_func_def             = 0        # unsigned number

# The number of newlines after a try-catch-finally block that isn't followed by a brace close.
# 0 = No change.
nl_after_try_catch_finally      = 0        # unsigned number

# The number of newlines before and after a property, indexer or event decl.
# 0 = No change.
nl_around_cs_property           = 0        # unsigned number

# The number of newlines between the get/set/add/remove handlers in C#.
# 0 = No change.
nl_between_get_set              = 0        # unsigned number

# Add or remove newline between C# property and the '{'.
nl_property_brace               = ignore   # ignore/add/remove/force

# Whether to remove blank lines after '{'.
eat_blanks_after_open_brace     = false    # false/true

# Whether to remove blank lines before '}'.
eat_blanks_before_close_brace   = false    # false/true

# How aggressively to remove extra newlines not in preproc.
# 0: No change
# 1: Remove most newlines not handled by other config
# 2: Remove all newlines and reformat completely by config
nl_remove_extra_newlines        = 0        # unsigned number

# Whether to put a blank line before 'return' statements, unless after an open brace.
nl_before_return                = false    # false/true

# Whether to put a blank line after 'return' statements, unless followed by a close brace.
nl_after_return                 = false    # false/true

# Whether to put a newline after a Java annotation statement.
# Only affects annotations that are after a newline.
nl_after_annotation             = ignore   # ignore/add/remove/force

# Controls the newline between two annotations.
nl_between_annotation           = ignore   # ignore/add/remove/force
```
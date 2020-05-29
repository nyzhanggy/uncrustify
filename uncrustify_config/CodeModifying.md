

# Code modifying options (non-whitespace)

```ruby
# Add or remove braces on single-line 'do' statement.
mod_full_brace_do               = ignore   # ignore/add/remove/force

# Add or remove braces on single-line 'for' statement.
mod_full_brace_for              = ignore   # ignore/add/remove/force

# Add or remove braces on single-line function definitions. (Pawn).
mod_full_brace_function         = ignore   # ignore/add/remove/force

# Add or remove braces on single-line 'if' statement. Will not remove the braces if they contain an 'else'.
mod_full_brace_if               = ignore   # ignore/add/remove/force

# Make all if/elseif/else statements in a chain be braced or not. Overrides mod_full_brace_if.
# If any must be braced, they are all braced.  If all can be unbraced, then the braces are removed.
mod_full_brace_if_chain         = false    # false/true

# Make all if/elseif/else statements with at least one 'else' or 'else if' fully braced.
# If mod_full_brace_if_chain is used together with this option, all if-else chains will get braces,
# and simple 'if' statements will lose them (if possible).
mod_full_brace_if_chain_only    = false    # false/true

# Don't remove braces around statements that span N newlines
mod_full_brace_nl               = 0        # unsigned number

# Blocks removal of braces if the parenthesis of if/for/while/.. span multiple lines.
mod_full_brace_nl_block_rem_mlcond = false    # false/true

# Add or remove braces on single-line 'while' statement.
mod_full_brace_while            = ignore   # ignore/add/remove/force

# Add or remove braces on single-line 'using ()' statement.
mod_full_brace_using            = ignore   # ignore/add/remove/force

# Add or remove unnecessary paren on 'return' statement.
mod_paren_on_return             = ignore   # ignore/add/remove/force

# Whether to change optional semicolons to real semicolons.
mod_pawn_semicolon              = false    # false/true

# Add parens on 'while' and 'if' statement around bools.
mod_full_paren_if_bool          = false    # false/true

# Whether to remove superfluous semicolons.
mod_remove_extra_semicolon      = false    # false/true

# If a function body exceeds the specified number of newlines and doesn't have a comment after
# the close brace, a comment will be added.
mod_add_long_function_closebrace_comment = 0        # unsigned number

# If a namespace body exceeds the specified number of newlines and doesn't have a comment after
# the close brace, a comment will be added.
mod_add_long_namespace_closebrace_comment = 0        # unsigned number

# If a class body exceeds the specified number of newlines and doesn't have a comment after
# the close brace, a comment will be added.
mod_add_long_class_closebrace_comment = 0        # unsigned number

# If a switch body exceeds the specified number of newlines and doesn't have a comment after
# the close brace, a comment will be added.
mod_add_long_switch_closebrace_comment = 0        # unsigned number

# If an #ifdef body exceeds the specified number of newlines and doesn't have a comment after
# the #endif, a comment will be added.
mod_add_long_ifdef_endif_comment = 0        # unsigned number

# If an #ifdef or #else body exceeds the specified number of newlines and doesn't have a comment after
# the #else, a comment will be added.
mod_add_long_ifdef_else_comment = 0        # unsigned number

# If True, will sort consecutive single-line 'import' statements [Java, D].
mod_sort_import                 = false    # false/true

# If True, will sort consecutive single-line 'using' statements [C#].
mod_sort_using                  = false    # false/true

# If True, will sort consecutive single-line '#include' statements [C/C++] and '#import' statements [Obj-C]
# This is generally a bad idea, as it may break your code.
mod_sort_include                = false    # false/true

# If True, it will move a 'break' that appears after a fully braced 'case' before the close brace.
mod_move_case_break             = false    # false/true

# Will add or remove the braces around a fully braced case statement.
# Will only remove the braces if there are no variable declarations in the block.
mod_case_brace                  = ignore   # ignore/add/remove/force

# If True, it will remove a void 'return;' that appears as the last statement in a function.
mod_remove_empty_return         = false    # false/true

# If True, it will organize the properties (Obj-C).
mod_sort_oc_properties          = false    # false/true

# Determines weight of class property modifier (Obj-C).
mod_sort_oc_property_class_weight = 0        # number

# Determines weight of atomic, nonatomic (Obj-C).
mod_sort_oc_property_thread_safe_weight = 0        # number

# Determines weight of readwrite (Obj-C).
mod_sort_oc_property_readwrite_weight = 0        # number

# Determines weight of reference type (retain, copy, assign, weak, strong) (Obj-C).
mod_sort_oc_property_reference_weight = 0        # number

# Determines weight of getter type (getter=) (Obj-C).
mod_sort_oc_property_getter_weight = 0        # number

# Determines weight of setter type (setter=) (Obj-C).
mod_sort_oc_property_setter_weight = 0        # number

# Determines weight of nullability type (nullable, nonnull, null_unspecified, null_resettable) (Obj-C).
mod_sort_oc_property_nullability_weight = 0        # number
```
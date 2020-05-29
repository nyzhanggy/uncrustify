
# Preprocessor options

```ruby
# Control indent of preprocessors inside #if blocks at brace level 0 (file-level).
pp_indent                       = ignore   # ignore/add/remove/force

# Whether to indent #if/#else/#endif at the brace level (True) or from column 1 (False).
pp_indent_at_level              = false    # false/true

# Specifies the number of columns to indent preprocessors per level at brace level 0 (file-level).
# If pp_indent_at_level=False, specifies the number of columns to indent preprocessors per level at brace level > 0 (function-level).
# Default=1.
pp_indent_count                 = 1        # unsigned number

# Add or remove space after # based on pp_level of #if blocks.
pp_space                        = ignore   # ignore/add/remove/force

# Sets the number of spaces added with pp_space.
pp_space_count                  = 0        # unsigned number

# The indent for #region and #endregion in C# and '#pragma region' in C/C++.
pp_indent_region                = 0        # number

# Whether to indent the code between #region and #endregion.
pp_region_indent_code           = false    # false/true

# If pp_indent_at_level=True, sets the indent for #if, #else and #endif when not at file-level.
# 0:  indent preprocessors using output_tab_size.
# >0: column at which all preprocessors will be indented.
pp_indent_if                    = 0        # number

# Control whether to indent the code between #if, #else and #endif.
pp_if_indent_code               = false    # false/true

# Whether to indent '#define' at the brace level (True) or from column 1 (false).
pp_define_at_level              = false    # false/true

# Whether to ignore the '#define' body while formatting.
pp_ignore_define_body           = false    # false/true

# Whether to indent case statements between #if, #else, and #endif.
# Only applies to the indent of the preprocesser that the case statements directly inside of.
pp_indent_case                  = true     # false/true

# Whether to indent whole function definitions between #if, #else, and #endif.
# Only applies to the indent of the preprocesser that the function definition is directly inside of.
pp_indent_func_def              = true     # false/true

# Whether to indent extern C blocks between #if, #else, and #endif.
# Only applies to the indent of the preprocesser that the extern block is directly inside of.
pp_indent_extern                = true     # false/true

# Whether to indent braces directly inside #if, #else, and #endif.
# Only applies to the indent of the preprocesser that the braces are directly inside of.
pp_indent_brace                 = true     # false/true
```
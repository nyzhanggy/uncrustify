

# Sort includes options

```ruby
# The regex for include category with priority 0.
include_category_0              = ""         # string

# The regex for include category with priority 1.
include_category_1              = ""         # string

# The regex for include category with priority 2.
include_category_2              = ""         # string
```

# Use or Do not Use options

```ruby
# True:  indent_func_call_param will be used (default)
# False: indent_func_call_param will NOT be used.
use_indent_func_call_param      = true     # false/true

# The value of the indentation for a continuation line is calculate differently if the statement is:
#   a declaration: your case with QString fileName ...
#   an assignment: your case with pSettings = new QSettings( ...
# At the second case the indentation value might be used twice:
#   at the assignment
#   at the function call (if present)
# To prevent the double use of the indentation value, use this option with the value 'True'.
# True:  indent_continue will be used only once
# False: indent_continue will be used every time (default).
use_indent_continue_only_once   = false    # false/true

# the value might be used twice:
#   at the assignment
#   at the opening brace
# To prevent the double use of the indentation value, use this option with the value 'True'.
# True:  indentation will be used only once
# False: indentation will be used every time (default).
indent_cpp_lambda_only_once     = false    # false/true

# SIGNAL/SLOT Qt macros have special formatting options. See options_for_QT.cpp for details.
# Default=True.
use_options_overriding_for_qt_macros = true     # false/true

#
# Warn levels - 1: error, 2: warning (default), 3: note
#

# Warning is given if doing tab-to-\t replacement and we have found one in a C# verbatim string literal.
warn_level_tabs_found_in_verbatim_string_literals = 2        # unsigned number

# Meaning of the settings:
#   Ignore - do not do any changes
#   Add    - makes sure there is 1 or more space/brace/newline/etc
#   Force  - makes sure there is exactly 1 space/brace/newline/etc,
#            behaves like Add in some contexts
#   Remove - removes space/brace/newline/etc
#
#
# - Token(s) can be treated as specific type(s) with the 'set' option:
#     `set tokenType tokenString [tokenString...]`
#
#     Example:
#       `set BOOL __AND__ __OR__`
#
#     tokenTypes are defined in src/token_enum.h, use them without the
#     'CT_' prefix: 'CT_BOOL' -> 'BOOL'
#
#
# - Token(s) can be treated as type(s) with the 'type' option.
#     `type tokenString [tokenString...]`
#
#     Example:
#       `type int c_uint_8 Rectangle`
#
#     This can also be achieved with `set TYPE int c_uint_8 Rectangle`
#
#
# To embed whitespace in tokenStrings use the '\' escape character, or quote
# the tokenStrings. These quotes are supported: "'`
#
#
# - Support for the auto detection of languages through the file ending can be
#   added using the 'file_ext' command.
#     `file_ext langType langString [langString..]`
#
#     Example:
#       `file_ext CPP .ch .cxx .cpp.in`
#
#     langTypes are defined in uncrusify_types.h in the lang_flag_e enum, use
#     them without the 'LANG_' prefix: 'LANG_CPP' -> 'CPP'
#
#
# - Custom macro-based indentation can be set up using 'macro-open',
#   'macro-else' and 'macro-close'.
#     `(macro-open | macro-else | macro-close) tokenString`
#
#     Example:
#       `macro-open  BEGIN_TEMPLATE_MESSAGE_MAP`
#       `macro-open  BEGIN_MESSAGE_MAP`
#       `macro-close END_MESSAGE_MAP`
#
#
# option(s) with 'not default' value: 0
#
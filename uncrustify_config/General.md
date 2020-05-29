## General options

```ruby
# The type of line endings. Default=Auto.
newlines                        = auto     # auto/lf/crlf/cr

# The original size of tabs in the input. Default=8.
input_tab_size                  = 8        # unsigned number

# The size of tabs in the output (only used if align_with_tabs=true). Default=8.
output_tab_size                 = 8        # unsigned number

# The ASCII value of the string escape char, usually 92 (\) or 94 (^). (Pawn).
string_escape_char              = 92       # unsigned number

# Alternate string escape char for Pawn. Only works right before the quote char.
string_escape_char2             = 0        # unsigned number

# Replace tab characters found in string literals with the escape sequence \t instead.
string_replace_tab_chars        = false    # false/true

# Allow interpreting '>=' and '>>=' as part of a template in 'void f(list<list<B>>=val);'.
# If True, 'assert(x<0 && y>=3)' will be broken. Default=False
# Improvements to template detection may make this option obsolete.
tok_split_gte                   = false    # false/true

# Override the default ' *INDENT-OFF*' in comments for disabling processing of part of the file.
disable_processing_cmt          = ""         # string

# Override the default ' *INDENT-ON*' in comments for enabling processing of part of the file.
enable_processing_cmt           = ""         # string

# Enable parsing of digraphs. Default=False.
enable_digraphs                 = false    # false/true

# Control what to do with the UTF-8 BOM (recommend 'remove').
utf8_bom                        = ignore   # ignore/add/remove/force

# If the file contains bytes with values between 128 and 255, but is not UTF-8, then output as UTF-8.
utf8_byte                       = false    # false/true

# Force the output encoding to UTF-8.
utf8_force                      = false    # false/true
```
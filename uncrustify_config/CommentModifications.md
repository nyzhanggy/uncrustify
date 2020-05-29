

# Comment modifications

```ruby
# Try to wrap comments at cmt_width columns
cmt_width                       = 0        # unsigned number

# Set the comment reflow mode (Default=0)
# 0: no reflowing (apart from the line wrapping due to cmt_width)
# 1: no touching at all
# 2: full reflow
cmt_reflow_mode                 = 0        # unsigned number

# Whether to convert all tabs to spaces in comments. Default is to leave tabs inside comments alone, unless used for indenting.
cmt_convert_tab_to_spaces       = false    # false/true

# If False, disable all multi-line comment changes, including cmt_width. keyword substitution and leading chars.
# Default=True.
cmt_indent_multi                = true     # false/true

# Whether to group c-comments that look like they are in a block.
cmt_c_group                     = false    # false/true

# Whether to put an empty '/*' on the first line of the combined c-comment.
cmt_c_nl_start                  = false    # false/true

# Whether to put a newline before the closing '*/' of the combined c-comment.
cmt_c_nl_end                    = false    # false/true

# Whether to group cpp-comments that look like they are in a block.
cmt_cpp_group                   = false    # false/true

# Whether to put an empty '/*' on the first line of the combined cpp-comment.
cmt_cpp_nl_start                = false    # false/true

# Whether to put a newline before the closing '*/' of the combined cpp-comment.
cmt_cpp_nl_end                  = false    # false/true

# Whether to change cpp-comments into c-comments.
cmt_cpp_to_c                    = false    # false/true

# Whether to put a star on subsequent comment lines.
cmt_star_cont                   = false    # false/true

# The number of spaces to insert at the start of subsequent comment lines.
cmt_sp_before_star_cont         = 0        # unsigned number

# The number of spaces to insert after the star on subsequent comment lines.
cmt_sp_after_star_cont          = 0        # number

# For multi-line comments with a '*' lead, remove leading spaces if the first and last lines of
# the comment are the same length. Default=True.
cmt_multi_check_last            = true     # false/true

# For multi-line comments with a '*' lead, remove leading spaces if the first and last lines of
# the comment are the same length AND if the length is bigger as the first_len minimum. Default=4
cmt_multi_first_len_minimum     = 4        # unsigned number

# The filename that contains text to insert at the head of a file if the file doesn't start with a C/C++ comment.
# Will substitute $(filename) with the current file's name.
cmt_insert_file_header          = ""         # string

# The filename that contains text to insert at the end of a file if the file doesn't end with a C/C++ comment.
# Will substitute $(filename) with the current file's name.
cmt_insert_file_footer          = ""         # string

# The filename that contains text to insert before a function implementation if the function isn't preceded with a C/C++ comment.
# Will substitute $(function) with the function name and $(javaparam) with the javadoc @param and @return stuff.
# Will also substitute $(fclass) with the class name: void CFoo::Bar() { ... }.
cmt_insert_func_header          = ""         # string

# The filename that contains text to insert before a class if the class isn't preceded with a C/C++ comment.
# Will substitute $(class) with the class name.
cmt_insert_class_header         = ""         # string

# The filename that contains text to insert before a Obj-C message specification if the method isn't preceded with a C/C++ comment.
# Will substitute $(message) with the function name and $(javaparam) with the javadoc @param and @return stuff.
cmt_insert_oc_msg_header        = ""         # string

# If a preprocessor is encountered when stepping backwards from a function name, then
# this option decides whether the comment should be inserted.
# Affects cmt_insert_oc_msg_header, cmt_insert_func_header and cmt_insert_class_header.
cmt_insert_before_preproc       = false    # false/true

# If a function is declared inline to a class definition, then
# this option decides whether the comment should be inserted.
# Affects cmt_insert_func_header.
cmt_insert_before_inlines       = true     # false/true

# If the function is a constructor/destructor, then
# this option decides whether the comment should be inserted.
# Affects cmt_insert_func_header.
cmt_insert_before_ctor_dtor     = false    # false/true
```
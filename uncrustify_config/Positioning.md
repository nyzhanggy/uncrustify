

# Positioning options

```ruby
# The position of arithmetic operators in wrapped expressions.
pos_arith                       = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of assignment in wrapped expressions.
# Do not affect '=' followed by '{'.
pos_assign                      = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of boolean operators in wrapped expressions.
pos_bool                        = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of comparison operators in wrapped expressions.
pos_compare                     = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of conditional (b ? t : f) operators in wrapped expressions.
pos_conditional                 = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of the comma in wrapped expressions.
pos_comma                       = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of the comma in enum entries.
pos_enum_comma                  = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of the comma in the base class list if there are more than one line,
#   (tied to nl_class_init_args).
pos_class_comma                 = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of the comma in the constructor initialization list.
# Related to nl_constr_colon, nl_constr_init_args and pos_constr_colon.
pos_constr_comma                = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of trailing/leading class colon, between class and base class list
#   (tied to nl_class_colon).
pos_class_colon                 = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force

# The position of colons between constructor and member initialization,
# (tied to nl_constr_colon).
# Related to nl_constr_colon, nl_constr_init_args and pos_constr_comma.
pos_constr_colon                = ignore   # ignore/join/lead/lead_break/lead_force/trail/trail_break/trail_force
```
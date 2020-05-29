
# Spacing options

## 算术符号
```ruby
# Add or remove space around arithmetic operator '+', '-', '/', '*', etc
# also '>>>' '<<' '>>' '%' '|'.
sp_arith                        = ignore   # ignore/add/remove/force

# Add or remove space around arithmetic operator '+' and '-'. Overrides sp_arith
sp_arith_additive               = ignore   # ignore/add/remove/force
```
## 赋值符号
```ruby
# Add or remove space around assignment operator '=', '+=', etc.
sp_assign                       = ignore   # ignore/add/remove/force

# Add or remove space around '=' in C++11 lambda capture specifications. Overrides sp_assign.
sp_cpp_lambda_assign            = ignore   # ignore/add/remove/force

# Add or remove space after the capture specification in C++11 lambda.
sp_cpp_lambda_paren             = ignore   # ignore/add/remove/force

# Add or remove space around assignment operator '=' in a prototype.
sp_assign_default               = ignore   # ignore/add/remove/force

# Add or remove space before assignment operator '=', '+=', etc. Overrides sp_assign.
sp_before_assign                = ignore   # ignore/add/remove/force

# Add or remove space after assignment operator '=', '+=', etc. Overrides sp_assign.
sp_after_assign                 = ignore   # ignore/add/remove/force
```
## 枚举 
```ruby
# Add or remove space in 'NS_ENUM ('.
sp_enum_paren                   = ignore   # ignore/add/remove/force

# Add or remove space around assignment '=' in enum.
sp_enum_assign                  = ignore   # ignore/add/remove/force

# Add or remove space before assignment '=' in enum. Overrides sp_enum_assign.
sp_enum_before_assign           = ignore   # ignore/add/remove/force

# Add or remove space after assignment '=' in enum. Overrides sp_enum_assign.
sp_enum_after_assign            = ignore   # ignore/add/remove/force

# Add or remove space around assignment ':' in enum.
sp_enum_colon                   = ignore   # ignore/add/remove/force
```
## 宏定义
```ruby
# Add or remove space around preprocessor '##' concatenation operator. Default=Add.
sp_pp_concat                    = add      # ignore/add/remove/force

# Add or remove space after preprocessor '#' stringify operator. Also affects the '#@' charizing operator.
sp_pp_stringify                 = ignore   # ignore/add/remove/force

# Add or remove space before preprocessor '#' stringify operator as in '#define x(y) L#y'.
sp_before_pp_stringify          = ignore   # ignore/add/remove/force
```
## 或与操作
```ruby
# Add or remove space around boolean operators '&&' and '||'.
sp_bool                         = ignore   # ignore/add/remove/force
```
## 比较操作
```ruby
# Add or remove space around compare operator '<', '>', '==', etc.
sp_compare                      = ignore   # ignore/add/remove/force
```
## 圆括号
```ruby
# Add or remove space inside '(' and ')'.
sp_inside_paren                 = ignore   # ignore/add/remove/force

# Add or remove space between nested parens: '((' vs ') )'.
sp_paren_paren                  = ignore   # ignore/add/remove/force

# Add or remove space between back-to-back parens: ')(' vs ') ('.
sp_cparen_oparen                = ignore   # ignore/add/remove/force

# Whether to balance spaces inside nested parens.
sp_balance_nested_parens        = false    # false/true

# Add or remove space between ')' and '{'.
sp_paren_brace                  = ignore   # ignore/add/remove/force
```
## 星号
```ruby
# Add or remove space before pointer star '*'.
sp_before_ptr_star              = ignore   # ignore/add/remove/force

# Add or remove space before pointer star '*' that isn't followed by a variable name
# If set to 'ignore', sp_before_ptr_star is used instead.
sp_before_unnamed_ptr_star      = ignore   # ignore/add/remove/force

# Add or remove space between pointer stars '*'.
sp_between_ptr_star             = ignore   # ignore/add/remove/force

# Add or remove space after pointer star '*', if followed by a word.
sp_after_ptr_star               = ignore   # ignore/add/remove/force

# Add or remove space after pointer caret '^', if followed by a word.
sp_after_ptr_block_caret        = ignore   # ignore/add/remove/force

# Add or remove space after pointer star '*', if followed by a qualifier.
# '*' 后面跟的为修饰词时，比如 __nullable，'*'后面的空格
sp_after_ptr_star_qualifier     = ignore   # ignore/add/remove/force

# Add or remove space after a pointer star '*', if followed by a func proto/def.
sp_after_ptr_star_func          = ignore   # ignore/add/remove/force

# Add or remove space after a pointer star '*', if followed by an open paren (function types).
sp_ptr_star_paren               = ignore   # ignore/add/remove/force

# Add or remove space before a pointer star '*', if followed by a func proto/def.
sp_before_ptr_star_func         = ignore   # ignore/add/remove/force
```
## & 符号
```ruby
# Add or remove space before a reference sign '&'.
sp_before_byref                 = ignore   # ignore/add/remove/force

# Add or remove space before a reference sign '&' that isn't followed by a variable name.
# If set to 'ignore', sp_before_byref is used instead.
sp_before_unnamed_byref         = ignore   # ignore/add/remove/force

# Add or remove space after reference sign '&', if followed by a word.
sp_after_byref                  = ignore   # ignore/add/remove/force

# Add or remove space after a reference sign '&', if followed by a func proto/def.
sp_after_byref_func             = ignore   # ignore/add/remove/force

# Add or remove space before a reference sign '&', if followed by a func proto/def.
sp_before_byref_func            = ignore   # ignore/add/remove/force
```
## type and word
```ruby
# Add or remove space between type and word. Default=Force.
sp_after_type                   = force    # ignore/add/remove/force
```
## D constructs
```ruby
# Add or remove space before the paren in the D constructs 'template Foo(' and 'class Foo('.
sp_before_template_paren        = ignore   # ignore/add/remove/force
```
## 尖括号
```ruby
# Add or remove space in 'template <' vs 'template<'.
# If set to ignore, sp_before_angle is used.
sp_template_angle               = ignore   # ignore/add/remove/force

# Add or remove space before '<>'.
sp_before_angle                 = ignore   # ignore/add/remove/force

# Add or remove space inside '<' and '>'.
sp_inside_angle                 = ignore   # ignore/add/remove/force

# Add or remove space between '<>' and ':'.
sp_angle_colon                  = ignore   # ignore/add/remove/force

# Add or remove space after '<>'.
sp_after_angle                  = ignore   # ignore/add/remove/force

# Add or remove space between '<>' and '(' as found in 'new List<byte>(foo);'.
sp_angle_paren                  = ignore   # ignore/add/remove/force

# Add or remove space between '<>' and '()' as found in 'new List<byte>();'.
sp_angle_paren_empty            = ignore   # ignore/add/remove/force

# Add or remove space between '<>' and a word as in 'List<byte> m;' or 'template <typename T> static ...'.
sp_angle_word                   = ignore   # ignore/add/remove/force

# Add or remove space between '>' and '>' in '>>' (template stuff). Default=Add.
sp_angle_shift                  = add      # ignore/add/remove/force

# Permit removal of the space between '>>' in 'foo<bar<int> >' (C++11 only). Default=False.
# sp_angle_shift cannot remove the space without this option.
sp_permit_cpp11_shift           = false    # false/true
```
## 条件语句
```ruby
# Add or remove space before '(' of 'if', 'for', 'switch', 'while', etc.
sp_before_sparen                = ignore   # ignore/add/remove/force

# Add or remove space inside if-condition '(' and ')'.
sp_inside_sparen                = ignore   # ignore/add/remove/force

# Add or remove space before if-condition ')'. Overrides sp_inside_sparen.
sp_inside_sparen_close          = ignore   # ignore/add/remove/force

# Add or remove space after if-condition '('. Overrides sp_inside_sparen.
sp_inside_sparen_open           = ignore   # ignore/add/remove/force

# Add or remove space after ')' of 'if', 'for', 'switch', and 'while', etc.
sp_after_sparen                 = ignore   # ignore/add/remove/force

# Add or remove space between ')' and '{' of 'if', 'for', 'switch', and 'while', etc.
sp_sparen_brace                 = ignore   # ignore/add/remove/force
```
## D 中圆括号
```ruby
# Add or remove space between 'invariant' and '(' in the D language.
sp_invariant_paren              = ignore   # ignore/add/remove/force

# Add or remove space after the ')' in 'invariant (C) c' in the D language.
sp_after_invariant_paren        = ignore   # ignore/add/remove/force
```
## 分号
```ruby
# Add or remove space before empty statement ';' on 'if', 'for' and 'while'.
sp_special_semi                 = ignore   # ignore/add/remove/force

# Add or remove space before ';'. Default=Remove.
sp_before_semi                  = remove   # ignore/add/remove/force

# Add or remove space before ';' in non-empty 'for' statements.
sp_before_semi_for              = ignore   # ignore/add/remove/force

# Add or remove space before a semicolon of an empty part of a for statement.
sp_before_semi_for_empty        = ignore   # ignore/add/remove/force

# Add or remove space after ';', except when followed by a comment. Default=Add.
sp_after_semi                   = add      # ignore/add/remove/force

# Add or remove space after ';' in non-empty 'for' statements. Default=Force.
sp_after_semi_for               = force    # ignore/add/remove/force

# Add or remove space after the final semicolon of an empty part of a for statement: for ( ; ; <here> ).
sp_after_semi_for_empty         = ignore   # ignore/add/remove/force
```
## 方括号
```ruby
# Add or remove space before '[' (except '[]').
sp_before_square                = ignore   # ignore/add/remove/force

# Add or remove space before '[]'.
sp_before_squares               = ignore   # ignore/add/remove/force

# Add or remove space before structured bindings. Only for C++17.
sp_cpp_before_struct_binding    = ignore   # ignore/add/remove/force

# Add or remove space inside a non-empty '[' and ']'.
sp_inside_square                = ignore   # ignore/add/remove/force

# Add or remove space inside a non-empty OC boxed array '@[' and ']'.
# If set to ignore, sp_inside_square is used.
sp_inside_square_oc_array       = ignore   # ignore/add/remove/force
```
## 逗号
```ruby
# Add or remove space after ',', 'a,b' vs 'a, b'.
sp_after_comma                  = ignore   # ignore/add/remove/force

# Add or remove space before ','. Default=Remove.
sp_before_comma                 = remove   # ignore/add/remove/force

# Add or remove space between ',' and ']' in multidimensional array type 'int[,,]'. Only for C#.
sp_after_mdatype_commas         = ignore   # ignore/add/remove/force

# Add or remove space between '[' and ',' in multidimensional array type 'int[,,]'. Only for C#.
sp_before_mdatype_commas        = ignore   # ignore/add/remove/force

# Add or remove space between ',' in multidimensional array type 'int[,,]'. Only for C#.
sp_between_mdatype_commas       = ignore   # ignore/add/remove/force

# Add or remove space between an open paren and comma: '(,' vs '( ,'. Default=Force.
sp_paren_comma                  = force    # ignore/add/remove/force
```
## ...
```ruby
# Add or remove space before the variadic '...' when preceded by a non-punctuator.
sp_before_ellipsis              = ignore   # ignore/add/remove/force
```
## 冒号
```ruby
# Add or remove space after class ':'.
sp_after_class_colon            = ignore   # ignore/add/remove/force

# Add or remove space before class ':'.
sp_before_class_colon           = ignore   # ignore/add/remove/force

# Add or remove space after class constructor ':'.
sp_after_constr_colon           = ignore   # ignore/add/remove/force

# Add or remove space before class constructor ':'.
sp_before_constr_colon          = ignore   # ignore/add/remove/force

# Add or remove space before case ':'. Default=Remove.
sp_before_case_colon            = remove   # ignore/add/remove/force
```
## operator
```ruby
# Add or remove space between 'operator' and operator sign.
sp_after_operator               = ignore   # ignore/add/remove/force

# Add or remove space between the operator symbol and the open paren, as in 'operator ++('.
sp_after_operator_sym           = ignore   # ignore/add/remove/force

# Overrides sp_after_operator_sym when the operator has no arguments, as in 'operator *()'.
sp_after_operator_sym_empty     = ignore   # ignore/add/remove/force
```
## 类型转换
```ruby
# Add or remove space after C/D cast, i.e. 'cast(int)a' vs 'cast(int) a' or '(int)a' vs '(int) a'.
sp_after_cast                   = ignore   # ignore/add/remove/force

# Add or remove spaces inside cast parens.
sp_inside_paren_cast            = ignore   # ignore/add/remove/force

# Add or remove space between the type and open paren in a C++ cast, i.e. 'int(exp)' vs 'int (exp)'.
sp_cpp_cast_paren               = ignore   # ignore/add/remove/force
```
## sizeof
```ruby
# Add or remove space between 'sizeof' and '('.
sp_sizeof_paren                 = ignore   # ignore/add/remove/force
```
## tag keyword
```ruby
# Add or remove space after the tag keyword (Pawn).
sp_after_tag                    = ignore   # ignore/add/remove/force
```
## 花括号
```ruby
# Add or remove space inside enum '{' and '}'.
sp_inside_braces_enum           = ignore   # ignore/add/remove/force

# Add or remove space inside struct/union '{' and '}'.
sp_inside_braces_struct         = ignore   # ignore/add/remove/force

# Add or remove space inside OC boxed dictionary @'{' and '}'
sp_inside_braces_oc_dict        = ignore   # ignore/add/remove/force

# Add or remove space after open brace in an unnamed temporary direct-list-initialization.
sp_after_type_brace_init_lst_open = ignore   # ignore/add/remove/force

# Add or remove space before close brace in an unnamed temporary direct-list-initialization.
sp_before_type_brace_init_lst_close = ignore   # ignore/add/remove/force

# Add or remove space inside an unnamed temporary direct-list-initialization.
sp_inside_type_brace_init_lst   = ignore   # ignore/add/remove/force

# Add or remove space inside '{' and '}'.
sp_inside_braces                = ignore   # ignore/add/remove/force

# Add or remove space inside '{}'.
sp_inside_braces_empty          = ignore   # ignore/add/remove/force
```
## return type and func name
```ruby
# Add or remove space between return type and function name
# A minimum of 1 is forced except for pointer return types.
sp_type_func                    = ignore   # ignore/add/remove/force
```

```ruby
## type and open brace
# Add or remove space between type and open brace of an unnamed temporary direct-list-initialization.
sp_type_brace_init_lst          = ignore   # ignore/add/remove/force
```
## 方法定义与调用
```ruby
# Add or remove space between function name and '(' on function declaration.
sp_func_proto_paren             = ignore   # ignore/add/remove/force

# Add or remove space between function name and '()' on function declaration without parameters.
sp_func_proto_paren_empty       = ignore   # ignore/add/remove/force

# Add or remove space between function name and '(' on function definition.
sp_func_def_paren               = ignore   # ignore/add/remove/force

# Add or remove space between function name and '()' on function definition without parameters.
sp_func_def_paren_empty         = ignore   # ignore/add/remove/force

# Add or remove space inside empty function '()'.
sp_inside_fparens               = ignore   # ignore/add/remove/force

# Add or remove space inside function '(' and ')'.
sp_inside_fparen                = ignore   # ignore/add/remove/force

# Add or remove space inside the first parens in the function type: 'void (*x)(...)'.
sp_inside_tparen                = ignore   # ignore/add/remove/force

# Add or remove between the parens in the function type: 'void (*x)(...)'.
sp_after_tparen_close           = ignore   # ignore/add/remove/force

# Add or remove space between ']' and '(' when part of a function call.
sp_square_fparen                = ignore   # ignore/add/remove/force

# Add or remove space between ')' and '{' of function.
sp_fparen_brace                 = ignore   # ignore/add/remove/force

# Add or remove space between ')' and '{' of function call in object initialization. Overrides sp_fparen_brace.
sp_fparen_brace_initializer     = ignore   # ignore/add/remove/force

# Java: Add or remove space between ')' and '{{' of double brace initializer.
sp_fparen_dbrace                = ignore   # ignore/add/remove/force

# Add or remove space between function name and '(' on function calls.
sp_func_call_paren              = ignore   # ignore/add/remove/force

# Add or remove space between function name and '()' on function calls without parameters.
# If set to 'ignore' (the default), sp_func_call_paren is used.
sp_func_call_paren_empty        = ignore   # ignore/add/remove/force

# Add or remove space between the user function name and '(' on function calls
# You need to set a keyword to be a user function, like this: 'set func_call_user _' in the config file.
sp_func_call_user_paren         = ignore   # ignore/add/remove/force

# Add or remove space inside user function '(' and ')'
# You need to set a keyword to be a user function, like this: 'set func_call_user _' in the config file.
sp_func_call_user_inside_fparen = ignore   # ignore/add/remove/force

# Add or remove space between nested parens with user functions: '((' vs ') )'You need to set a keyword to be a user function, like this: 'set func_call_user _' in the config file.
sp_func_call_user_paren_paren   = ignore   # ignore/add/remove/force

# Add or remove space between a constructor/destructor and the open paren.
sp_func_class_paren             = ignore   # ignore/add/remove/force

# Add or remove space between a constructor without parameters or destructor and '()'.
sp_func_class_paren_empty       = ignore   # ignore/add/remove/force

# Add or remove space between 'return' and '('.
sp_return_paren                 = ignore   # ignore/add/remove/force

# Add or remove space between '__attribute__' and '('.
sp_attribute_paren              = ignore   # ignore/add/remove/force

# Add or remove space between 'defined' and '(' in '#if defined (FOO)'.
sp_defined_paren                = ignore   # ignore/add/remove/force

# Add or remove space between 'throw' and '(' in 'throw (something)'.
sp_throw_paren                  = ignore   # ignore/add/remove/force

# Add or remove space between 'throw' and anything other than '(' as in '@throw [...];'.
sp_after_throw                  = ignore   # ignore/add/remove/force

# Add or remove space between 'catch' and '(' in 'catch (something) { }'
# If set to ignore, sp_before_sparen is used.
sp_catch_paren                  = ignore   # ignore/add/remove/force

# Add or remove space between '@catch' and '(' in '@catch (something) { }'
# If set to ignore, sp_catch_paren is used.
sp_oc_catch_paren               = ignore   # ignore/add/remove/force

# Add or remove space between 'version' and '(' in 'version (something) { }' (D language)
# If set to ignore, sp_before_sparen is used.
sp_version_paren                = ignore   # ignore/add/remove/force

# Add or remove space between 'scope' and '(' in 'scope (something) { }' (D language)
# If set to ignore, sp_before_sparen is used.
sp_scope_paren                  = ignore   # ignore/add/remove/force

# Add or remove space between 'super' and '(' in 'super (something)'. Default=Remove.
sp_super_paren                  = remove   # ignore/add/remove/force

# Add or remove space between 'this' and '(' in 'this (something)'. Default=Remove.
sp_this_paren                   = remove   # ignore/add/remove/force

# Add or remove space between macro and value.
sp_macro                        = ignore   # ignore/add/remove/force

# Add or remove space between macro function ')' and value.
sp_macro_func                   = ignore   # ignore/add/remove/force

# Add or remove space between 'else' and '{' if on the same line.
sp_else_brace                   = ignore   # ignore/add/remove/force

# Add or remove space between '}' and 'else' if on the same line.
sp_brace_else                   = ignore   # ignore/add/remove/force

# Add or remove space between '}' and the name of a typedef on the same line.
sp_brace_typedef                = ignore   # ignore/add/remove/force

# Add or remove space between 'catch' and '{' if on the same line.
sp_catch_brace                  = ignore   # ignore/add/remove/force

# Add or remove space between '@catch' and '{' if on the same line.
# If set to ignore, sp_catch_brace is used.
sp_oc_catch_brace               = ignore   # ignore/add/remove/force

# Add or remove space between '}' and 'catch' if on the same line.
sp_brace_catch                  = ignore   # ignore/add/remove/force

# Add or remove space between '}' and '@catch' if on the same line.
# If set to ignore, sp_brace_catch is used.
sp_oc_brace_catch               = ignore   # ignore/add/remove/force

# Add or remove space between 'finally' and '{' if on the same line.
sp_finally_brace                = ignore   # ignore/add/remove/force

# Add or remove space between '}' and 'finally' if on the same line.
sp_brace_finally                = ignore   # ignore/add/remove/force

# Add or remove space between 'try' and '{' if on the same line.
sp_try_brace                    = ignore   # ignore/add/remove/force

# Add or remove space between get/set and '{' if on the same line.
sp_getset_brace                 = ignore   # ignore/add/remove/force

# Add or remove space between a variable and '{' for C++ uniform initialization. Default=Add.
sp_word_brace                   = add      # ignore/add/remove/force

# Add or remove space between a variable and '{' for a namespace. Default=Add.
sp_word_brace_ns                = add      # ignore/add/remove/force

# Add or remove space before the '::' operator.
sp_before_dc                    = ignore   # ignore/add/remove/force

# Add or remove space after the '::' operator.
sp_after_dc                     = ignore   # ignore/add/remove/force

# Add or remove around the D named array initializer ':' operator.
sp_d_array_colon                = ignore   # ignore/add/remove/force

# Add or remove space after the '!' (not) operator. Default=Remove.
sp_not                          = remove   # ignore/add/remove/force

# Add or remove space after the '~' (invert) operator. Default=Remove.
sp_inv                          = remove   # ignore/add/remove/force

# Add or remove space after the '&' (address-of) operator. Default=Remove
# This does not affect the spacing after a '&' that is part of a type.
sp_addr                         = remove   # ignore/add/remove/force

# Add or remove space around the '.' or '->' operators. Default=Remove.
sp_member                       = remove   # ignore/add/remove/force

# Add or remove space after the '*' (dereference) operator. Default=Remove
# This does not affect the spacing after a '*' that is part of a type.
sp_deref                        = remove   # ignore/add/remove/force

# Add or remove space after '+' or '-', as in 'x = -5' or 'y = +7'. Default=Remove.
sp_sign                         = remove   # ignore/add/remove/force

# Add or remove space before or after '++' and '--', as in '(--x)' or 'y++;'. Default=Remove.
sp_incdec                       = remove   # ignore/add/remove/force

# Add or remove space before a backslash-newline at the end of a line. Default=Add.
sp_before_nl_cont               = add      # ignore/add/remove/force

# Add or remove space after the scope '+' or '-', as in '-(void) foo;' or '+(int) bar;'.
sp_after_oc_scope               = ignore   # ignore/add/remove/force

# Add or remove space after the colon in message specs
# '-(int) f:(int) x;' vs '-(int) f: (int) x;'.
sp_after_oc_colon               = ignore   # ignore/add/remove/force

# Add or remove space before the colon in message specs
# '-(int) f: (int) x;' vs '-(int) f : (int) x;'.
sp_before_oc_colon              = ignore   # ignore/add/remove/force

# Add or remove space after the colon in immutable dictionary expression
# 'NSDictionary *test = @{@"foo" :@"bar"};'.
sp_after_oc_dict_colon          = ignore   # ignore/add/remove/force

# Add or remove space before the colon in immutable dictionary expression
# 'NSDictionary *test = @{@"foo" :@"bar"};'.
sp_before_oc_dict_colon         = ignore   # ignore/add/remove/force

# Add or remove space after the colon in message specs
# '[object setValue:1];' vs '[object setValue: 1];'.
sp_after_send_oc_colon          = ignore   # ignore/add/remove/force

# Add or remove space before the colon in message specs
# '[object setValue:1];' vs '[object setValue :1];'.
sp_before_send_oc_colon         = ignore   # ignore/add/remove/force

# Add or remove space after the (type) in message specs
# '-(int)f: (int) x;' vs '-(int)f: (int)x;'.
sp_after_oc_type                = ignore   # ignore/add/remove/force

# Add or remove space after the first (type) in message specs
# '-(int) f:(int)x;' vs '-(int)f:(int)x;'.
sp_after_oc_return_type         = ignore   # ignore/add/remove/force

# Add or remove space between '@selector' and '('
# '@selector(msgName)' vs '@selector (msgName)'
# Also applies to @protocol() constructs.
sp_after_oc_at_sel              = ignore   # ignore/add/remove/force

# Add or remove space between '@selector(x)' and the following word
# '@selector(foo) a:' vs '@selector(foo)a:'.
sp_after_oc_at_sel_parens       = ignore   # ignore/add/remove/force

# Add or remove space inside '@selector' parens
# '@selector(foo)' vs '@selector( foo )'
# Also applies to @protocol() constructs.
sp_inside_oc_at_sel_parens      = ignore   # ignore/add/remove/force

# Add or remove space before a block pointer caret
# '^int (int arg){...}' vs. ' ^int (int arg){...}'.
sp_before_oc_block_caret        = ignore   # ignore/add/remove/force

# Add or remove space after a block pointer caret
# '^int (int arg){...}' vs. '^ int (int arg){...}'.
sp_after_oc_block_caret         = ignore   # ignore/add/remove/force

# Add or remove space between the receiver and selector in a message.
# '[receiver selector ...]'.
sp_after_oc_msg_receiver        = ignore   # ignore/add/remove/force

# Add or remove space after @property.
sp_after_oc_property            = ignore   # ignore/add/remove/force

# Add or remove space between '@synchronized' and the parenthesis
# '@synchronized(foo)' vs '@synchronized (foo)'.
sp_after_oc_synchronized        = ignore   # ignore/add/remove/force

# Add or remove space around the ':' in 'b ? t : f'.
sp_cond_colon                   = ignore   # ignore/add/remove/force

# Add or remove space before the ':' in 'b ? t : f'. Overrides sp_cond_colon.
sp_cond_colon_before            = ignore   # ignore/add/remove/force

# Add or remove space after the ':' in 'b ? t : f'. Overrides sp_cond_colon.
sp_cond_colon_after             = ignore   # ignore/add/remove/force

# Add or remove space around the '?' in 'b ? t : f'.
sp_cond_question                = ignore   # ignore/add/remove/force

# Add or remove space before the '?' in 'b ? t : f'. Overrides sp_cond_question.
sp_cond_question_before         = ignore   # ignore/add/remove/force

# Add or remove space after the '?' in 'b ? t : f'. Overrides sp_cond_question.
sp_cond_question_after          = ignore   # ignore/add/remove/force

# In the abbreviated ternary form (a ?: b), add/remove space between ? and :.'. Overrides all other sp_cond_* options.
sp_cond_ternary_short           = ignore   # ignore/add/remove/force

# Fix the spacing between 'case' and the label. Only 'ignore' and 'force' make sense here.
sp_case_label                   = ignore   # ignore/add/remove/force

# Control the space around the D '..' operator.
sp_range                        = ignore   # ignore/add/remove/force

# Control the spacing after ':' in 'for (TYPE VAR : EXPR)'. Only JAVA.
sp_after_for_colon              = ignore   # ignore/add/remove/force

# Control the spacing before ':' in 'for (TYPE VAR : EXPR)'. Only JAVA.
sp_before_for_colon             = ignore   # ignore/add/remove/force

# Control the spacing in 'extern (C)' (D).
sp_extern_paren                 = ignore   # ignore/add/remove/force

# Control the space after the opening of a C++ comment '// A' vs '//A'.
sp_cmt_cpp_start                = ignore   # ignore/add/remove/force

# True: If space is added with sp_cmt_cpp_start, do it after doxygen sequences like '///', '///<', '//!' and '//!<'.
sp_cmt_cpp_doxygen              = false    # false/true

# True: If space is added with sp_cmt_cpp_start, do it after Qt translator or meta-data comments like '//:', '//=', and '//~'.
sp_cmt_cpp_qttr                 = false    # false/true

# Controls the spaces between #else or #endif and a trailing comment.
sp_endif_cmt                    = ignore   # ignore/add/remove/force

# Controls the spaces after 'new', 'delete' and 'delete[]'.
sp_after_new                    = ignore   # ignore/add/remove/force

# Controls the spaces between new and '(' in 'new()'.
sp_between_new_paren            = ignore   # ignore/add/remove/force

# Controls the spaces between ')' and 'type' in 'new(foo) BAR'.
sp_after_newop_paren            = ignore   # ignore/add/remove/force

# Controls the spaces inside paren of the new operator: 'new(foo) BAR'.
sp_inside_newop_paren           = ignore   # ignore/add/remove/force

# Controls the space after open paren of the new operator: 'new(foo) BAR'.
# Overrides sp_inside_newop_paren.
sp_inside_newop_paren_open      = ignore   # ignore/add/remove/force

# Controls the space before close paren of the new operator: 'new(foo) BAR'.
# Overrides sp_inside_newop_paren.
sp_inside_newop_paren_close     = ignore   # ignore/add/remove/force

# Controls the spaces before a trailing or embedded comment.
sp_before_tr_emb_cmt            = ignore   # ignore/add/remove/force

# Number of spaces before a trailing or embedded comment.
sp_num_before_tr_emb_cmt        = 0        # unsigned number

# Control space between a Java annotation and the open paren.
sp_annotation_paren             = ignore   # ignore/add/remove/force

# If True, vbrace tokens are dropped to the previous token and skipped.
sp_skip_vbrace_tokens           = false    # false/true

# Controls the space after 'noexcept'.
sp_after_noexcept               = ignore   # ignore/add/remove/force

# If True, a <TAB> is inserted after #define.
force_tab_after_define          = false    # false/true
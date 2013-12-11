
# WTF methods

## What does it do?

WTF methods (wtf_methods) is a Ruby gem that prints a formatted list of class-specific methods, excluding ActiveRecord::Base (when applicable) and generic Object methods.

## How do I get it?

Place the following code in your Gemfile to install the gem in your development environment:

```ruby
group :development do
  gem 'wtf_methods'
end
```

To return a pretty list of class-specific methods, use the following in your console or code:

```ruby
wtf ClassName # or wtf(ClassName)
```

For example:
```ruby
wtf Date
wtf Toucan # assuming you have a Toucan class that does awesome stuff
```

## Wait...doesn't #methods do this?

No. Here's an example for the Math class. First, using #methods:
```ruby
# Unsorted, includes generic Object methods, and generally ugly

  2.0.0p353 :019 > Math.methods
  => [:atan2, :cos, :sin, :tan, :acos, :asin, :atan, :cosh, :sinh, :tanh, :acosh, :asinh, :atanh, :exp, :log, :log2, :log10, :sqrt, :cbrt, :frexp, :ldexp, :hypot, :erf, :erfc, :gamma, :lgamma, :freeze, :===, :==, :<=>, :<, :<=, :>, :>=, :to_s, :inspect, :included_modules, :include?, :name, :ancestors, :instance_methods, :public_instance_methods, :protected_instance_methods, :private_instance_methods, :constants, :const_get, :const_set, :const_defined?, :const_missing, :class_variables, :remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :public_constant, :private_constant, :module_exec, :class_exec, :module_eval, :class_eval, :method_defined?, :public_method_defined?, :private_method_defined?, :protected_method_defined?, :public_class_method, :private_class_method, :autoload, :autoload?, :instance_method, :public_instance_method, :wtf, :nil?, :=~, :!~, :eql?, :hash, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
```

And second, using wtf_methods:
```ruby
# Sorted, class-specific methods. And damn pretty.

  2.0.0p353 :018 > wtf Math
  ====================
   acos
   acosh
   asin
   asinh
   atan
   atan2
   atanh
  --------------------
   cbrt
   cos
   cosh
  --------------------
   erf
   erfc
   exp
  --------------------
   frexp
  --------------------
   gamma
  --------------------
   hypot
  --------------------
   ldexp
   lgamma
   log
   log10
   log2
  --------------------
   sin
   sinh
   sqrt
  --------------------
   tan
   tanh
  ====================
```

## That's all, folks.

Please send any questions or suggestions to sconstantinides@gmail.com


# WTF methods

## What does it do?

WTF methods (wtf_methods) is a Ruby gem that prints a formatted list of object-specific class and instance methods, excluding ActiveRecord::Base (when applicable) and generic Object methods.

## How do I get it?

Place the following code in your Gemfile to install the gem in your development environment:

```ruby
group :development do
  gem 'wtf_methods'
end
```

To return a pretty list of object-specific methods, use the following in your console or code:

```ruby
wtf ClassName # or wtf(ClassName)
```

For example:
```ruby
wtf Date
wtf Toucan # assuming you have a Toucan class that does awesome stuff
```

## Wait...doesn't #methods do this?

Nope. Here's an example for the Math class:
```ruby
  > wtf Math
  ====================
   CLASS METHODS
  --------------------
   all_symbols
  ====================
   INSTANCE METHODS
  --------------------
   []
  --------------------
   between?
  --------------------
   capitalize
   casecmp
  --------------------
   downcase
  --------------------
   empty?
   encoding
  --------------------
   id2name
   intern
  --------------------
   length
  --------------------
   match
  --------------------
   next
  --------------------
   size
   slice
   succ
   swapcase
  --------------------
   to_proc
   to_sym
  --------------------
   upcase
  ====================
```

## That's all, folks.

Please send any questions or suggestions to sconstantinides@gmail.com
